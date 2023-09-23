.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;
.super Ljava/lang/Object;
.source "LinkedIdCreateTwitterStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 44
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev1Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev1Fragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 48
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment;->mEditHandle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment;->mEditHandle:Landroid/widget/EditText;

    const-string v0, "Please input a Twitter handle!"

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment$1$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment$1;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 86
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev2Fragment$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
