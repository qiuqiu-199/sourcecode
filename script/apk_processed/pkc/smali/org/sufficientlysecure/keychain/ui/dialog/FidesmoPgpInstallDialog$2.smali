.class Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;
.super Ljava/lang/Object;
.source "FidesmoPgpInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 57
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 60
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->dismiss()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method