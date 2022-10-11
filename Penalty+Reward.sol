pragma solidity ^0.6.0;

contract NoticeContract {
    event PayNotice(address employ1, string amount1,address employ2, string amount2,address employ3, string amount3); //event defined will be emited later
    address payable admin;
    address payable employee_one; // PBU supplier
    address payable employee_two; // Crane
    address payable employee_three; // Worker
    uint public PBU;
    uint public crane;
    uint public worker;
    
    // contract initiator, define criteria to trigger contract
    constructor(address payable _admin, address payable _one, address payable _two, address payable _three, uint _PBU, uint _crane, uint _worker) public payable {
    admin = _admin;
    employee_one = _one;
    employee_two = _two;
    employee_three = _three;
    PBU = _PBU;
    crane = _crane;
    worker = _worker;
    msg.sender == admin;
    }

    modifier onlyGC() {
        require(msg.sender==admin,"Not GC");
        _;}    //this function defines that only GC can operate
    
    //this is payment notice, sending notice to each participant how much they will assign when detecting the scenarios
    function SendNotice() public onlyGC {
        
        if (PBU == 0  && crane == 0 && worker == 0 ) {
            emit PayNotice(employee_one,'-10896 ether', employee_two, '-5195 ether', employee_three, '-5986 ether');
        }

        if (PBU == 0  && crane == 0 && worker == 1 ) {
            emit PayNotice(employee_one,'-11212 ether', employee_two, '-7708 ether', employee_three, '0 ether');
        }

        if (PBU == 0  && crane == 0 && worker == 2 ) {
            emit PayNotice(employee_one,'-11760 ether', employee_two, '-8259 ether', employee_three, '4998 ether');
        }

        if (PBU == 0  && crane == 1 && worker == 0 ) {
            emit PayNotice(employee_one,'-10245 ether', employee_two, '0 ether', employee_three, '-8544 ether');
        }
        
        if (PBU == 0  && crane == 1 && worker == 1 ) {
            emit PayNotice(employee_one,'-11520 ether', employee_two, '0 ether', employee_three, '0 ether');
        }

        if (PBU == 0  && crane == 1 && worker == 2 ) {
            emit PayNotice(employee_one,'-12889 ether', employee_two, '0 ether', employee_three, '5651 ether');
        }

        if (PBU == 0  && crane == 2 && worker == 0 ) {
            emit PayNotice(employee_one,'-11345 ether', employee_two, '622 ether', employee_three, '-9106 ether');
        }

        if (PBU == 0  && crane == 2 && worker == 1 ) {
            emit PayNotice(employee_one,'-12482 ether', employee_two, '1433 ether', employee_three, '0 ether');
        }
        if (PBU == 0  && crane == 2 && worker == 2 ) {
            emit PayNotice(employee_one,'-13667 ether', employee_two, '2676 ether', employee_three, '6977 ether');
        }

        if (PBU == 1  && crane == 0 && worker == 0 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '-4696 ether', employee_three, '-6668 ether');
        }

        if (PBU == 1  && crane == 0 && worker == 1 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '-8003 ether', employee_three, '0 ether');
        }

        if (PBU == 1  && crane == 0 && worker == 2 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '-9409 ether', employee_three, '5671 ether');
        }

        if (PBU == 1  && crane == 1 && worker == 0 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '0 ther', employee_three, '-9849 ether');
        }

        if (PBU == 1  && crane == 1 && worker == 1 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '0 ether', employee_three, '0 ether');
        }

        if (PBU == 1  && crane == 1 && worker == 2 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '0 ether', employee_three, '7485 ether');
        }

        if (PBU == 1  && crane == 2 && worker == 0 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '2118 ether', employee_three, '-10318 ether');
        }

        if (PBU == 1  && crane == 2 && worker == 1 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '2691 ether', employee_three, '0 ether');
        }
        
        if (PBU == 1  && crane == 2 && worker == 2 ) {
            emit PayNotice(employee_one,'0 ether', employee_two, '3505 ether', employee_three, '8363 ether');
        }        

        if (PBU == 2  && crane == 0 && worker == 0 ) {
            emit PayNotice(employee_one,'2815 ether', employee_two, '5272 ether', employee_three, '7849 ether');
        }

        if (PBU == 2  && crane == 0 && worker == 1 ) {
            emit PayNotice(employee_one,'4146 ether', employee_two, '-9159 ether', employee_three, '0 ether');
        }

        if (PBU == 2  && crane == 0 && worker == 2 ) {
            emit PayNotice(employee_one,'4678 ether', employee_two, '-10422 ether', employee_three, '6211 ether');
        }

        if (PBU == 2  && crane == 1 && worker == 0 ) {
            emit PayNotice(employee_one,'3420 ether', employee_two, '0 ether', employee_three, '-11505 ether');
        }

        if (PBU == 2  && crane == 1 && worker == 1 ) {
            emit PayNotice(employee_one,'5604 ether', employee_two, '0 ether', employee_three, '0 ether');
        }

        if (PBU == 2  && crane == 1 && worker == 2 ) {
            emit PayNotice(employee_one,'5982 ether', employee_two, '0 ether', employee_three, '7869 ether');
        }

        if (PBU == 2  && crane == 2 && worker == 0 ) {
            emit PayNotice(employee_one,'3426 ether', employee_two, '2103 ether', employee_three, '-11697 ether');
        }

        if (PBU == 2  && crane == 2 && worker == 1 ) {
            emit PayNotice(employee_one,'5245 ether', employee_two, '2355 ether', employee_three, '0 ether');
        }

        if (PBU == 2  && crane == 2 && worker == 2 ) {
            emit PayNotice(employee_one,'6665 ether', employee_two, '4108 ether', employee_three, '9802 ether');
        }
    }}

contract PBUContract {
    event Withdraw(address sender, uint balance);
    event SendMoney(address sender, uint balance);
    event RequestMoney(address sender, uint balance);
    address payable admin;
    address payable employee_one; // PBU supplier
    address payable employee_two; // Crane
    address payable employee_three; // Worker
    uint public PBU;
    uint public crane;
    uint public worker;

    constructor(address payable _admin, address payable _one, address payable _two, address payable _three, uint _PBU, uint _crane, uint _worker) public payable {
    admin = _admin;
    employee_one = _one;
    employee_two = _two;
    employee_three = _three;
    PBU = _PBU;
    crane = _crane;
    worker = _worker;
    require(msg.sender == admin);
    }

    modifier onlyGC() {
        require(msg.sender==admin,"Not GC");
        _;}
    modifier onlyPBU() {
        require(msg.sender==employee_one,"Not PBU");
        _;}

    function PBU_retainage() public onlyGC payable{
    
          require(msg.value == 97200 ether);
     }
    
    //this is reward function, defines how much rewards will be assigned under each scenario.
    function PBU_reward() public payable onlyGC returns (bool) {
        if (PBU == 2  && crane == 0 && worker == 0 ) {
            require(msg.value == 2815 ether);
            employee_one.transfer(2815 ether);
            emit SendMoney(employee_one, 2815 ether);
            return true;} //make it public, and payable is used so that money can be transferred among different accounts
        
        if (PBU == 2  && crane == 0 && worker == 1 ) {
            require(msg.value == 4146 ether);
            employee_one.transfer(4146 ether);
            emit SendMoney(employee_one, 4146 ether);
            return true;}
        
        if (PBU == 2  && crane == 0 && worker == 2 ) {
            require(msg.value == 4678 ether);
            employee_one.transfer(4678 ether);
            emit SendMoney(employee_one, 4678 ether);
            return true;}
        
        if (PBU == 2  && crane == 1 && worker == 0 ) {
            require(msg.value == 3420 ether);
            employee_one.transfer(3420 ether);
            emit SendMoney(employee_one, 3420 ether);
            return true;}
        
        if (PBU == 2  && crane == 1 && worker == 1 ) {
            require(msg.value == 5604 ether);
            employee_one.transfer(5604 ether);
            emit SendMoney(employee_one, 5604 ether);
            return true;}        
        
        if (PBU == 2  && crane == 1 && worker == 2 ) {
            require(msg.value == 5982 ether);
            employee_one.transfer(5982 ether);
            emit SendMoney(employee_one, 5982 ether);
            return true;}
        
        if (PBU == 2  && crane == 2 && worker == 0 ) {
            require(msg.value ==3426 ether);
            employee_one.transfer(3426 ether);
            emit SendMoney(employee_one, 3426 ether);
            return true;}        

        if (PBU == 2  && crane == 2 && worker == 1 ) {
            require(msg.value == 5245);
            employee_one.transfer(5245 ether);
            emit SendMoney(employee_one, 5245 ether);
            return true;} 
        
        if (PBU == 2  && crane == 2 && worker == 2 ) {
            require(msg.value == 6665 ether);
            employee_one.transfer(6665 ether);
            emit SendMoney(employee_one, 6665 ether);
            return true;}        
        
        else {
            return false;
    }
        
    }
    
    //this is penalty function for PBU
    function PBU_penalty(uint amount) public onlyGC payable  {
        uint penalty = amount * 1 ether;
        if(address(this).balance >= penalty) {
            admin.transfer(penalty);} //if retainage is not enough to pay the penalty, retainage will transfer to GC's account first
        else {
            uint request;
            admin.transfer(address(this).balance);
            request = (amount* 1 ether) - address(this).balance;
            emit RequestMoney(employee_one,request); //if retainage is enough to pay the penalty, then using retainge for penalty
            }
    }
    //this function is where they should pay for the remained amounts of penalty.
    function payhere(uint amount) public onlyPBU payable {
        uint pay = amount * 1 ether;
        admin.transfer(pay);
    }
    
    //check contract balance
    function getBalance() public view returns (uint)  {
        return address(this).balance;
    }
    
    //withdraw the remained amounts in the smart contract
    function withdraw(uint amount) public onlyGC returns(bool) {
        uint remain = amount * 1 ether;
        require(remain <= address(this).balance);
        admin.transfer(remain);
        return true;

    }

}

//Similarly, this contract is specific for crane
contract CraneContract {
    event Withdraw(uint amount, uint balance);
    event SendMoney(address sender, uint balance);
    event RequestMoney(address sender, uint amount);
    address payable admin;
    address payable employee_one; // PBU supplier
    address payable employee_two; // Crane
    address payable employee_three; // Worker
    uint public PBU;
    uint public crane;
    uint public worker;
    
    constructor(address payable _admin, address payable _one, address payable _two, address payable _three, uint _PBU, uint _crane, uint _worker) public payable {
    admin = _admin;
    employee_one = _one;
    employee_two = _two;
    employee_three = _three;
    PBU = _PBU;
    crane = _crane;
    worker = _worker;
    require(msg.sender == admin);
    }
    
    modifier onlyGC() {
        require(msg.sender==admin,"Not GC");
        _;}
    modifier onlycrane() {
        require(msg.sender==employee_two,"Not crane");
        _;}        

    function crane_retainage() public onlyGC payable{
        if (PBU == 0  && crane == 0 && worker == 0 ) {
            require(msg.value == 7002 ether);
        }
        if (PBU == 0  && crane == 0 && worker == 1 ) {
            require(msg.value == 6732 ether);            
        }
        if (PBU == 0  && crane == 0 && worker == 2 ) {
            require(msg.value == 6426 ether);            
        }
        if (PBU == 0  && crane == 1 && worker == 0 ) {
            require(msg.value == 6721 ether);            
        }        
        if (PBU == 0  && crane == 1 && worker == 1 ) {
            require(msg.value == 6174 ether);            
        }
        if (PBU == 0  && crane == 1 && worker == 2 ) {
            require(msg.value == 5891 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 0 ) {
            require(msg.value == 6808 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 1 ) {
            require(msg.value == 6142 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 2 ) {
            require(msg.value == 5695 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 0 ) {
            require(msg.value == 6163 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 1 ) {
            require(msg.value == 5940 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 2 ) {
            require(msg.value == 5679 ether);            
        }   
        if (PBU == 1  && crane == 1 && worker == 0 ) {
            require(msg.value == 6061 ether);            
        }
        if (PBU == 1  && crane == 1 && worker == 1 ) {
            require(msg.value == 5468 ether);            
        }
        if (PBU == 1  && crane == 1 && worker == 2 ) {
            require(msg.value == 5090 ether);            
        }     
        if (PBU == 1  && crane == 2 && worker == 0 ) {
            require(msg.value == 5953 ether);            
        } 
        if (PBU == 1  && crane == 2 && worker == 1 ) {
            require(msg.value == 5326 ether);            
        }
        if (PBU == 1  && crane == 2 && worker == 2 ) {
            require(msg.value == 4892 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 0 ) {
            require(msg.value == 6091 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 1 ) {
            require(msg.value == 5755 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 2 ) {
            require(msg.value == 5443 ether);            
        }   
        if (PBU == 2  && crane ==1 && worker == 0 ) {
            require(msg.value == 5945 ether);            
        } 
        if (PBU == 2  && crane ==1 && worker == 1 ) {
            require(msg.value == 5180 ether);            
        } 
        if (PBU == 2  && crane ==1 && worker == 2 ) {
            require(msg.value == 4808 ether);            
        } 
        if (PBU == 2  && crane ==2 && worker == 0 ) {
            require(msg.value == 5825 ether);            
        } 
        if (PBU == 2  && crane ==2 && worker == 1 ) {
            require(msg.value == 5085 ether);            
        }    
        if (PBU == 2  && crane ==2 && worker == 2 ) {
            require(msg.value == 4541 ether);            
        }         
    }    
    function crane_reward() public payable onlyGC returns (bool) {

        if (PBU == 0  && crane == 2 && worker == 0 ) {
            require(msg.value == 622 ether);
            employee_two.transfer(622 ether);
            emit SendMoney(employee_two, 622 ether);
            return true;}
        
        if (PBU == 0  && crane == 2 && worker == 1 ) {
            require(msg.value == 1433);
            employee_two.transfer(1433 ether);
            emit SendMoney(employee_two, 1433 ether);
            return true;}
        
        if (PBU == 0  && crane == 2 && worker == 2 ) {
            require(msg.value == 2676 ether);
            employee_two.transfer(2676 ether);
            emit SendMoney(employee_two, 2676 ether);
            return true;}
        
        if (PBU == 1  && crane == 2 && worker == 0 ) {
            require(msg.value == 2118 ether);
            employee_two.transfer(2118 ether);
            emit SendMoney(employee_two, 2118 ether);
            return true;}
        
        if (PBU == 1  && crane == 2 && worker == 1 ) {
            require(msg.value == 2691 ether);
            employee_two.transfer(2691 ether);
            emit SendMoney(employee_two, 2691 ether);
            return true;}        
        
        if (PBU == 1  && crane == 2 && worker == 2 ) {
            require(msg.value == 3505 ether);
            employee_two.transfer(3505 ether);
            emit SendMoney(employee_two, 3505 ether);
            return true;}
        
        if (PBU == 2  && crane == 2 && worker == 0 ) {
            require(msg.value == 2103 ether);
            employee_two.transfer(2103 ether);
            emit SendMoney(employee_two, 2103 ether);
            return true;}        

        if (PBU == 2  && crane == 2 && worker == 1 ) {
            require(msg.value == 2355 ether);
            employee_two.transfer(2355 ether);
            emit SendMoney(employee_two, 2355 ether);
            return true;} 
        
        if (PBU == 2  && crane == 2 && worker == 2 ) {
            require(msg.value == 4108 ether);
            employee_two.transfer(4108 ether);
            emit SendMoney(employee_two, 4108 ether);
            return true;}        
        
        else {
            return false;
    }
    }
    function crane_penalty(uint amount) public onlyGC payable  {
        uint penalty = amount * 1 ether;
        if(address(this).balance >= penalty) {
            admin.transfer(penalty);}
        else {
            uint request;
            admin.transfer(address(this).balance);
            request = (amount * 1 ether) - address(this).balance;
            emit RequestMoney(employee_two,request);}
        
    }
    function payhere(uint amount) public onlycrane payable {
        uint pay = amount * 1 ether;
        admin.transfer(pay);
    }
    function getBalance() public view returns (uint)  {
        return address(this).balance;
    }

    function withdraw(uint amount) public onlyGC returns(bool) {
        uint remain = amount * 1 ether;
        require(remain <= address(this).balance);
        admin.transfer(remain);
        return true;

    }
}

contract WorkerContract {
    event Withdraw(uint amount, uint balance);
    event SendMoney(address sender, uint balance);
    event RequestMoney(address sender, uint amount);
    address payable admin;
    address payable employee_one; // PBU supplier
    address payable employee_two; // Crane
    address payable employee_three; // Worker
    uint public PBU;
    uint public crane;
    uint public worker;

    constructor(address payable _admin, address payable _one, address payable _two, address payable _three, uint _PBU, uint _crane, uint _worker) public payable {
    admin = _admin;
    employee_one = _one;
    employee_two = _two;
    employee_three = _three;
    PBU = _PBU;
    crane = _crane;
    worker = _worker;
    msg.sender == admin;
    }
    
    modifier onlyGC() {
        require(msg.sender==admin,"Not GC");
        _;}
    modifier onlyworker() {
        require(msg.sender==employee_three,"Not worker");
        _;}        

    function worker_retainage() public onlyGC payable{
        if (PBU == 0  && crane == 0 && worker == 0 ) {
            require(msg.value == 5835 ether);
        }
        if (PBU == 0  && crane == 0 && worker == 1 ) {
            require(msg.value == 5610 ether);            
        }
        if (PBU == 0  && crane == 0 && worker == 2 ) {
            require(msg.value == 5355 ether);            
        }
        if (PBU == 0  && crane == 1 && worker == 0 ) {
            require(msg.value == 5601 ether);            
        }        
        if (PBU == 0  && crane == 1 && worker == 1 ) {
            require(msg.value == 5145 ether);            
        }
        if (PBU == 0  && crane == 1 && worker == 2 ) {
            require(msg.value == 4910 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 0 ) {
            require(msg.value == 5673 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 1 ) {
            require(msg.value == 5118 ether);            
        }
        if (PBU == 0  && crane == 2 && worker == 2 ) {
            require(msg.value == 4746 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 0 ) {
            require(msg.value == 5136 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 1 ) {
            require(msg.value == 4950 ether);            
        }
        if (PBU == 1  && crane == 0 && worker == 2 ) {
            require(msg.value == 4733 ether);            
        }   
        if (PBU == 1  && crane == 1 && worker == 0 ) {
            require(msg.value == 5051 ether);            
        }
        if (PBU == 1  && crane == 1 && worker == 1 ) {
            require(msg.value == 4557 ether);            
        }
        if (PBU == 1  && crane == 1 && worker == 2 ) {
            require(msg.value == 4242 ether);            
        }     
        if (PBU == 1  && crane == 2 && worker == 0 ) {
            require(msg.value == 4961 ether);            
        } 
        if (PBU == 1  && crane == 2 && worker == 1 ) {
            require(msg.value == 4439 ether);            
        }
        if (PBU == 1  && crane == 2 && worker == 2 ) {
            require(msg.value == 4077 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 0 ) {
            require(msg.value == 5076 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 1 ) {
            require(msg.value == 4796 ether);            
        } 
        if (PBU == 2  && crane == 0 && worker == 2 ) {
            require(msg.value == 4536 ether);            
        }   
        if (PBU == 2  && crane ==1 && worker == 0 ) {
            require(msg.value == 4955 ether);            
        } 
        if (PBU == 2  && crane ==1 && worker == 1 ) {
            require(msg.value == 4317 ether);            
        } 
        if (PBU == 2  && crane ==1 && worker == 2 ) {
            require(msg.value == 4007 ether);            
        } 
        if (PBU == 2  && crane ==2 && worker == 0 ) {
            require(msg.value == 4854 ether);            
        } 
        if (PBU == 2  && crane ==2 && worker == 1 ) {
            require(msg.value == 4238 ether);            
        }    
        if (PBU == 2  && crane ==2 && worker == 2 ) {
            require(msg.value == 3758 ether);            
        }         
    }    
    function worker_reward() public payable onlyGC returns (bool) {

        if (PBU == 0  && crane == 0 && worker == 2 ) {
            require(msg.value == 4998 ether);
            employee_three.transfer(4998 ether);
            emit SendMoney(employee_three, 4998 ether);
            return true;}
        
        if (PBU == 0  && crane == 1 && worker == 2 ) {
            require(msg.value == 5651 ether);
            employee_three.transfer(5651 ether);
            emit SendMoney(employee_three, 5651 ether);
            return true;}
        
        if (PBU == 0  && crane == 2 && worker == 2 ) {
            require(msg.value == 6977 ether);
            employee_three.transfer(6977 ether);
            emit SendMoney(employee_three, 6977 ether);
            return true;}
        
        if (PBU == 1  && crane == 0 && worker == 2 ) {
            require(msg.value == 5671 ether);
            employee_three.transfer(5671 ether);
            emit SendMoney(employee_three, 5671 ether);
            return true;}
        
        if (PBU == 1  && crane == 1 && worker == 2 ) {
            require(msg.value == 7485 ether);
            employee_three.transfer(7485 ether);
            emit SendMoney(employee_three, 7485 ether);
            return true;}        
        
        if (PBU == 1  && crane == 2 && worker == 2 ) {
            require(msg.value == 8363 ether);
            employee_three.transfer(8363 ether);
            emit SendMoney(employee_three, 8363 ether);
            return true;}
        
        if (PBU == 2  && crane == 0 && worker == 2 ) {
            require(msg.value == 6211 ether);
            employee_three.transfer(6211 ether);
            emit SendMoney(employee_three, 6211 ether);
            return true;}        

        if (PBU == 2  && crane == 1 && worker == 2 ) {
            require(msg.value == 7869 ether);
            employee_three.transfer(7869 ether);
            emit SendMoney(employee_three, 7869 ether);
            return true;} 
        
        if (PBU == 2  && crane == 2 && worker == 2 ) {
            require(msg.value == 9802 ether);
            employee_three.transfer(9802 ether);
            emit SendMoney(employee_three, 9802 ether);
            return true;}        
        
        else {
            return false;
    }


        
    }  

    function worker_penalty(uint amount) public onlyGC payable  {
        uint penalty = amount * 1 ether;
        if(address(this).balance >= penalty) {
            admin.transfer(penalty);}
        else {
            uint request;
            request = (amount * 1 ether) - address(this).balance;
            admin.transfer(address(this).balance);
            emit RequestMoney(employee_three,request);}
        
    }
    function payhere(uint amount) public onlyworker payable {
        uint pay = amount * 1 ether;
        admin.transfer(pay);
    }
    function getBalance() public view returns (uint)  {
        return address(this).balance;
    }

    function withdraw(uint amount) public onlyGC returns(bool) {
        uint remain = amount * 1 ether;
        require(remain <= address(this).balance);
        admin.transfer(remain);
        return true;

    }
    
}
