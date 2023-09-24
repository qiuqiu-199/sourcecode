.class public Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;
.super Landroid/support/v7/app/AlertDialog$Builder;
.source "CustomAlertDialogBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 29
    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
