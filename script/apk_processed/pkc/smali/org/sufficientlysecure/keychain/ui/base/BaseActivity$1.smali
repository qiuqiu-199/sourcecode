.class Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setFullScreenDialogClose(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 145
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;->val$result:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 148
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;

    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;->val$result:I

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setResult(I)V

    .line 149
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
