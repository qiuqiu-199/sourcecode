.class Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;
.super Ljava/lang/Object;
.source "EncryptDecryptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 65
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 68
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method