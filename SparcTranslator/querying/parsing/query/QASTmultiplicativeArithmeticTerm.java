/* Generated By:JJTree: Do not edit this line. QASTmultiplicativeArithmeticTerm.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=QAST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package querying.parsing.query;



public
class QASTmultiplicativeArithmeticTerm extends SimpleNode {
  public QASTmultiplicativeArithmeticTerm(int id) {
    super(id);
  }

  public QASTmultiplicativeArithmeticTerm(QueryParser p, int id) {
    super(p, id);
  }

  public String toString() {
	  String result="";
	  for(int i=0;i<this.jjtGetNumChildren();i++) {
		if(i!=0) {
			result +=this.image.charAt(i-1);
		}
		result+=((SimpleNode)(this.jjtGetChild(i))).toString();
	  }
	  return result;
  }
  
}
/* JavaCC - OriginalChecksum=465da80ea27baf1198120fef062092e5 (do not edit this line) */
