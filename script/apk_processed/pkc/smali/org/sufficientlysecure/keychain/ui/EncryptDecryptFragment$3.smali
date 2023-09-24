.class Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;
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

    .line 81
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 84
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    const-string v0, "*/*"

    const/4 v1, 0x0

    const/16 v2, 0x7003

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
