
pragma solidity ^0.8.0;


contract SecureVault {
    address public owner;
    uint256 public lockTime;

    event Deposit(address indexed sender, uint256 amount);
    event Withdrawal(address indexed owner, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Yetkisiz erisim: Sadece sahip cekebilir.");
        _;
    }

   
    function deposit() public payable {
        require(msg.value > 0, "Yatirilacak miktar 0'dan buyuk olmali.");
        lockTime = block.timestamp + 24 hours;
        emit Deposit(msg.sender, msg.value);
    }

   
    function withdraw() public onlyOwner {
        require(block.timestamp > lockTime, "Kilit suresi dolmadi. Varliklar guvende.");
        uint256 amount = address(this).balance;
        
    
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Transfer basarisiz.");
        
        emit Withdrawal(owner, amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
