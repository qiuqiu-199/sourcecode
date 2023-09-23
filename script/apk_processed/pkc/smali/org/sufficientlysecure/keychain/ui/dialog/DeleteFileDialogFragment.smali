.class public Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteFileDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;
    }
.end annotation


# static fields
.field private static final ARG_DELETE_URIS:Ljava/lang/String; = "delete_uris"


# instance fields
.field private onDeletedListener:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->onDeletedListener:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;

    return-object p0
.end method

.method public static newInstance(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;
    .locals 6

    move-object/16 v3, p0

    .line 58
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "delete_uris"

    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;--->newInstance(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "delete_uris"

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;--->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 75
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 77
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delete_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 83
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v3, v8}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f110414

    .line 90
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v8, 0x7f110413

    const/4 v4, 0x1

    .line 91
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v7, v8, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v8, 0x7f110065

    .line 93
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;

    invoke-direct {v1, v7, v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v3, v8, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    .line 150
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$2;

    invoke-direct {v0, v7}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;)V

    invoke-virtual {v3, v8, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOnDeletedListener(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 161
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->onDeletedListener:Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;--->setOnDeletedListener(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
