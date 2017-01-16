//
//  main.cpp
//  InfixTopost
//
//  Created by raghav babbar on 16/01/17.
//  Copyright © 2017 raghav babbar. All rights reserved.

#include <iostream>
#include <stack>
using namespace  std;
char getBracket(char c)
{if(c==']')
    return '[';
  else if(c=='}')
      return '{';
return '(';

}
bool isOPerator(char c)
{
    return ((c=='+'||c=='-'||c=='/'||c=='*')?true:false);

}
bool isOPerand(char c)
{return (((c>='a'&&c<='z')||(c>='A'&&c<='Z')||(c>='1'&&c<='9')||(c=='0'))?true:false);
}
int getW8(char c)
{if(c=='+'||c=='-')
    return 0;
else return 1;
}
int compare(char a, char b)
{int aa=getW8(a);
int bb=getW8(b);
return (aa>=bb)?true:false;
}

bool isBracket(char c)
{
    return (c=='('||c=='['||c=='{'||c=='}'||c==']'||c==')')?true:false;
}
string infixToPostfix(string str)
{
string r="";
    stack <char> stk;
    
    
    for(int i=0;str[i]!='\0';i++)
    {
     if(isOPerand(str[i]))
     {  // cout<<"\n pushing operand ===>"<<str[i];
          r+=str[i];
     }
     else if(isOPerator(str[i]))
     {
         while(1)
         {
             if(!stk.empty()&&!(isBracket(stk.top()))&&compare(stk.top(), str[i]))
             {r+=stk.top();
                 stk.pop();
             }
             else break;
         }
         stk.push(str[i]);
     }
       
     else if(isBracket(str[i]))
     {
     if(str[i]=='['||str[i]=='{'||str[i]=='(')
     {stk.push(str[i]);
       // cout<<"\n pusing  bracket "<<str[i];
     
     } else
       {char b=getBracket(str[i]);
        //   cout<<b<<"\n";
           
        while(true)
        {if(stk.top()==b)
        {
            stk.pop();
            break;
        }
          //  cout<<"\n poping out"<<stk.top();
            r+=stk.top();
            stk.pop();
        }
       }
      
     }
        
        
    }

    while (!stk.empty()) {
        r+=stk.top();
        //cout<<"\n END poping "<<stk.top();
        stk.pop();
    }

    return r;}
int main()
{
 
    string s;
    cin>>s;
string g=infixToPostfix(s);
    cout<<"\nPOSTFIX_NOTATION="<<g;
return 0;
}
