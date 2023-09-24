.class Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;
.super Landroid/text/style/ClickableSpan;
.source "ViewKeyKeybaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->appendProofLinks(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/textuality/keybase/lib/Proof;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

.field final synthetic val$fingerprint:Ljava/lang/String;

.field final synthetic val$proof:Lcom/textuality/keybase/lib/Proof;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 233
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->val$proof:Lcom/textuality/keybase/lib/Proof;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->val$fingerprint:Ljava/lang/String;

    invoke-direct {v0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 236
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->val$proof:Lcom/textuality/keybase/lib/Proof;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;->val$fingerprint:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
