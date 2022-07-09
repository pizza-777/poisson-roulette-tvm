pragma ton-solidity >=0.61.2;

// 10 random at once
contract Puasson {
	uint256 public counter = 0;
	uint256 limit = 1000000;
	uint256[] public numbers = new uint256[](37);

	// combinations
	uint16 public a0x = 0; //1 1
	uint16 public a1x = 0; //1 x 1
	uint16 public a2x = 0; //1 x x 1
	uint16 public a3x = 0; //1 x x x 1
	uint16 public a4x = 0; //1 x x x x 1
	uint16 public a5x = 0; //1 x x x x x 1
	uint16 public a6x = 0; //1 x x x x x x 1
	uint16 public a7x = 0; //1 x x x x x x x 1
	uint16 public a8x = 0; //1 x x x x x x x x 1
	uint16 public a9x = 0; //1 x x x x x x x x x 1
	uint16 public a10x = 0; //1 x x x x x x x x x x 1
	uint16 public a11x = 0; //1 x x x x x x x x x x x 1
	uint16 public a12x = 0; //1 x x x x x x x x x x x x 1
	uint16 public a13x = 0; //1 x x x x x x x x x x x x x 1
	uint16 public a14x = 0; //1 x x x x x x x x x x x x x x 1
	uint16 public a15x = 0; //1 x x x x x x x x x x x x x x x 1
	uint16 public a16x = 0; //1 x x x x x x x x x x x x x x x x 1
	uint16 public a17x = 0; //1 x x x x x x x x x x x x x x x x x 1
	uint16 public a18x = 0; //1 x x x x x x x x x x x x x x x x x x 1
	uint16 public a19x = 0; //1 x x x x x x x x x x x x x x x x x x x 1
	uint16 public a20x = 0; //1 x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a21x = 0; //1 x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a22x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a23x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a24x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a25x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a26x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a27x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a28x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a29x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a30x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a31x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a32x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a33x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a34x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1
	uint16 public a35x = 0; //1 x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 1

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
			numbers[11],
			numbers[12],
			numbers[13],
			numbers[14],
			numbers[15],
			numbers[16],
			numbers[17],
			numbers[18],
			numbers[19],
			numbers[20],
			numbers[21],
			numbers[22],
			numbers[23],
			numbers[24],
			numbers[25],
			numbers[26],
			numbers[27],
			numbers[28],
			numbers[29],
			numbers[30],
			numbers[31],
			numbers[32],
			numbers[33],
			numbers[34],
			numbers[35],
			numbers[36],
			rnd.next(37) //from 0 to 36 : 37 items totally
		];

		if (counter > 36) {
			if (numbers[36] == numbers[35]) {
				a0x++;
			}
			if (numbers[36] == numbers[34]) {
				a1x++;
			}
			if (numbers[36] == numbers[33]) {
				a2x++;
			}
			if (numbers[36] == numbers[32]) {
				a3x++;
			}
			if (numbers[36] == numbers[31]) {
				a4x++;
			}
			if (numbers[36] == numbers[30]) {
				a5x++;
			}
			if (numbers[36] == numbers[29]) {
				a6x++;
			}
			if (numbers[36] == numbers[28]) {
				a7x++;
			}
			if (numbers[36] == numbers[27]) {
				a8x++;
			}
			if (numbers[36] == numbers[26]) {
				a9x++;
			}
			if (numbers[36] == numbers[25]) {
				a10x++;
			}
			if (numbers[36] == numbers[24]) {
				a11x++;
			}
			if (numbers[36] == numbers[23]) {
				a12x++;
			}
			if (numbers[36] == numbers[22]) {
				a13x++;
			}
			if (numbers[36] == numbers[21]) {
				a14x++;
			}
			if (numbers[36] == numbers[20]) {
				a15x++;
			}
			if (numbers[36] == numbers[19]) {
				a16x++;
			}
			if (numbers[36] == numbers[18]) {
				a17x++;
			}
			if (numbers[36] == numbers[17]) {
				a18x++;
			}
			if (numbers[36] == numbers[16]) {
				a19x++;
			}
			if (numbers[36] == numbers[15]) {
				a20x++;
			}
			if (numbers[36] == numbers[14]) {
				a21x++;
			}
			if (numbers[36] == numbers[13]) {
				a22x++;
			}
			if (numbers[36] == numbers[12]) {
				a23x++;
			}
			if (numbers[36] == numbers[11]) {
				a24x++;
			}
			if (numbers[36] == numbers[10]) {
				a25x++;
			}
			if (numbers[36] == numbers[9]) {
				a26x++;
			}
			if (numbers[36] == numbers[8]) {
				a27x++;
			}
			if (numbers[36] == numbers[7]) {
				a28x++;
			}
			if (numbers[36] == numbers[6]) {
				a29x++;
			}
			if (numbers[36] == numbers[5]) {
				a30x++;
			}
			if (numbers[36] == numbers[4]) {
				a31x++;
			}
			if (numbers[36] == numbers[3]) {
				a32x++;
			}
			if (numbers[36] == numbers[2]) {
				a33x++;
			}
			if (numbers[36] == numbers[1]) {
				a34x++;
			}
			if (numbers[36] == numbers[0]) {
				a35x++;
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
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
			uint16,
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
			a0x,
			a1x,
			a2x,
			a3x,
			a4x,
			a5x,
			a6x,
			a7x,
			a8x,
			a9x,
			a10x,
			a11x,
			a12x,
			a13x,
			a14x,
			a15x,
			a16x,
			a17x,
			a18x,
			a19x,
			a20x,
			a21x,
			a22x,
			a23x,
			a24x,
			a25x,
			a26x,
			a27x,
			a28x,
			a29x,
			a30x,
			a31x,
			a32x,
			a33x,
			a34x,
			a35x
		);
	}
}
