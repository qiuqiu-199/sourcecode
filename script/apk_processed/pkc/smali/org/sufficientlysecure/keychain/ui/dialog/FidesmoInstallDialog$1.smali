.class Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;
.super Ljava/lang/Object;
.source "FidesmoInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 50
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->dismiss()V

    .line 51
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method