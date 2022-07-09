pragma ton-solidity >=0.61.2;

contract Puasson {
	uint256 public counter = 0;
	uint256 limit = 1000000;
	uint256[] public numbers = new uint256[](11);

	// combinations
	uint16 public a11 = 0; //1 1
	uint16 public a1x1 = 0; //1 x 1
	uint16 public a1xx1 = 0; //1 x x 1
	uint16 public a1xxx1 = 0; //1 x x x 1
	uint16 public a1xxxx1 = 0; //1 x x x x 1
	uint16 public a1xxxxx1 = 0; //1 x x x x x 1
	uint16 public a1xxxxxx1 = 0; //1 x x x x x x 1
	uint16 public a1xxxxxxx1 = 0; //1 x x x x x x x 1
	uint16 public a1xxxxxxxx1 = 0; //1 x x x x x x x x 1
	uint16 public a1xxxxxxxxx1 = 0; //1 x x x x x x x x x 1

	function run() public {
		require(
			msg.pubkey() == tvm.pubkey() || msg.sender == address(this),
			100,
			"Only owner or the same contract can run. It's preventing from running by others at the same time."
		);
		require(counter < limit, 1001, "contract execution is finished");
		tvm.accept();
		counter++;
		rand();
		this.run();
	}

	function rand() private {
		rnd.shuffle();
		numbers = [
			numbers[1],
			numbers[2],
			numbers[3],
			numbers[4],
			numbers[5],
			numbers[6],
			numbers[7],
			numbers[8],
			numbers[9],
			numbers[10],
			rnd.next(36)
		];

		if (counter > 10) {
			if (numbers[10] == numbers[9]) {
				a11++;
			}

			if (numbers[10] == numbers[8]) {
				a1x1++;
			}

			if (numbers[10] == numbers[7]) {
				a1xx1++;
			}

			if (numbers[10] == numbers[6]) {
				a1xxx1++;
			}

			if (numbers[10] == numbers[5]) {
				a1xxxx1++;
			}

			if (numbers[10] == numbers[4]) {
				a1xxxxx1++;
			}

			if (numbers[10] == numbers[3]) {
				a1xxxxxx1++;
			}

			if (numbers[10] == numbers[2]) {
				a1xxxxxxx1++;
			}

			if (numbers[10] == numbers[1]) {
				a1xxxxxxxx1++;
			}

			if (numbers[10] == numbers[0]) {
				a1xxxxxxxxx1++;
			}
		}
	}

	function getResult()
		public
		view
		returns (
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16
		)
	{
		return (
			a11,
			a1x1,
			a1xx1,
			a1xxx1,
			a1xxxx1,
			a1xxxxx1,
			a1xxxxxx1,
			a1xxxxxxx1,
			a1xxxxxxxx1,
			a1xxxxxxxxx1
		);
	}
}
