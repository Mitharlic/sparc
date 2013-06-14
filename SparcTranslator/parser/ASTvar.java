/* Generated By:JJTree: Do not edit this line. ASTvar.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTvar extends SimpleNode {
  String originalImage;
  public ASTvar(int id) {
    super(id);
  }

  public void setOriginalImage(String originalImage) {
	  this.originalImage=originalImage;
  }
  public ASTvar(SparcTranslator p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(SparcTranslatorVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
  
  public String toString(boolean useOriginalImage) {
	  if(useOriginalImage)
	  {
		  return originalImage;
	  }
	  else 
	      return this.image;
  }
  
  public String toString() {
	  return toString(false);
  }
 }
/* JavaCC - OriginalChecksum=5a3de27798b9050730b612a5e32b6de8 (do not edit this line) */