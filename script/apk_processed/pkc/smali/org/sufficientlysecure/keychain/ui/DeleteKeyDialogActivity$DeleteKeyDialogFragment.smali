.class public Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteKeyDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteKeyDialogFragment"
.end annotation


# static fields
.field private static final ARG_DELETE_MASTER_KEY_IDS:Ljava/lang/String; = "delete_master_key_ids"

.field private static final ARG_HAS_SECRET:Ljava/lang/String; = "has_secret"


# instance fields
.field private mInflateView:Landroid/view/View;

.field private mMainMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 213
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance([JZ)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 225
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;-><init>()V

    .line 226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "delete_master_key_ids"

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "has_secret"

    .line 229
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;--->newInstance([JZ)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 304
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 306
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 239
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 241
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delete_master_key_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 242
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "has_secret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 244
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v7

    .line 246
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v7}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const/4 v2, 0x0

    const v3, 0x7f0c0111

    .line 250
    invoke-virtual {v7, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mInflateView:Landroid/view/View;

    .line 251
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mInflateView:Landroid/view/View;

    invoke-virtual {v1, v7}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 253
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mInflateView:Landroid/view/View;

    const v3, 0x7f0901eb

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mMainMessage:Landroid/widget/TextView;

    .line 256
    array-length v7, v0

    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    const/4 v7, 0x0

    .line 257
    aget-wide v4, v0, v7

    .line 259
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->dismiss()V

    return-object v2

    .line 265
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const v2, 0x7f110d45

    .line 268
    invoke-virtual {v6, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f110ce0

    .line 274
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v6, v0, v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 275
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mMainMessage:Landroid/widget/TextView;

    const v4, 0x7f110c56

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v6, v4, v3}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mMainMessage:Landroid/widget/TextView;

    const v4, 0x7f110c38

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v6, v4, v3}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->mMainMessage:Landroid/widget/TextView;

    const v0, 0x7f110804

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v7, 0x7f110065

    .line 283
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment$1;

    invoke-direct {v0, v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;)V

    invoke-virtual {v1, v7, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    .line 291
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment$2;

    invoke-direct {v0, v6}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;)V

    invoke-virtual {v1, v7, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
