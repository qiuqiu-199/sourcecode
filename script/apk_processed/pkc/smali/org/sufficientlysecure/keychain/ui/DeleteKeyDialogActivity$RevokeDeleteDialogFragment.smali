.class public Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteKeyDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevokeDeleteDialogFragment"
.end annotation


# static fields
.field public static final ARG_KEY_NAME:Ljava/lang/String; = "arg_key_name"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 310
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;
    .locals 5

    move-object/16 v2, p0

    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_key_name"

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;-><init>()V

    .line 318
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;--->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 397
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 399
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 325
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v11, 0x7f11010f

    .line 327
    invoke-virtual {v10, v11}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v0, 0x7f11010e

    .line 328
    invoke-virtual {v10, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 332
    new-instance v7, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v7, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 333
    new-array v1, v1, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "arg_key_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110111

    .line 333
    invoke-virtual {v10, v2, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 336
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0052

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0902df

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Spinner;

    .line 342
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$1;

    invoke-direct {v0, v10}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v7, v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 350
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;

    move-object v0, v9

    move-object v1, v10

    move-object v2, v8

    move-object v3, v11

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f11010d

    invoke-virtual {v7, v0, v9}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 371
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;

    invoke-direct {v1, v10, v11, v0, v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Ljava/lang/String;Landroid/support/v7/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
