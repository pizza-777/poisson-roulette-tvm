pragma ton-solidity >=0.61.2;

contract Puasson {
	uint256 public counter = 0;
	uint256 limit = 1000000;
	uint256[] public numbers = new uint256[](5);

	uint256 public a11 = 0; // example: 1 1
	uint256 public a1x1 = 0; //1 x 1
	uint256 public a1xx1 = 0; //1 x x 1
	uint256 public a1xxx1 = 0; //1 x x x 1

	function run() public {
		require(counter < limit, 1001, "contract execution is finished");
		tvm.accept();
		counter++;
		rand();
		this.run();
	}

	function rand() public {
		rnd.shuffle();
		numbers = [
			numbers[1],
			numbers[2],
			numbers[3],
			numbers[4],
			rnd.next(37)
		];

		if (counter > 4) {
			if (numbers[4] == numbers[3]) {
				a11++;
			}

			if (numbers[4] == numbers[2]) {
				a1x1++;
			}

			if (numbers[4] == numbers[1]) {
				a1xx1++;
			}

			if (numbers[4] == numbers[0]) {
				a1xxx1++;
			}
		}
	}

	function getResult()
		public
		view
		returns (
			uint256,
			uint256,
			uint256,
			uint256
		)
	{
		return (a11, a1x1, a1xx1, a1xxx1);
	}
}
