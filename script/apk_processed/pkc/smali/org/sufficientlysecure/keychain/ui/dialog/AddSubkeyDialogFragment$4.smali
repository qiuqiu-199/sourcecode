.class Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;
.super Ljava/lang/Object;
.source "AddSubkeyDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 329
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 332
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->dismiss()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
