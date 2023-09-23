.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;
.super Landroid/os/AsyncTask;
.source "AddEditKeyserverDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
        "Ljava/lang/Void;",
        "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;",
        ">;"
    }
.end annotation


# instance fields
.field mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

.field final synthetic val$onlyTrustedKeyserver:Z

.field final synthetic val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 332
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->val$onlyTrustedKeyserver:Z

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, [Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->doInBackground([Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    .line 346
    aget-object v4, v4, v0

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 348
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->val$onlyTrustedKeyserver:Z

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;--->doInBackground([Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 332
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->onPostExecute(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 353
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 354
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->GOOD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    if-ne v3, v0, :cond_0

    .line 355
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->keyserverEdited(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verificationFailed(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;--->onPostExecute(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onPreExecute()V
    .locals 6

    move-object/16 v3, p0

    .line 338
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 339
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    const v2, 0x7f110c2d

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 341
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;--->onPreExecute()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
