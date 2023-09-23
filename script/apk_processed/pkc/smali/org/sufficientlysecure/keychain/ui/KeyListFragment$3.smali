.class Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;
.super Landroid/os/AsyncTask;
.source "KeyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->checkClipboardForPublicKeyMaterial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

.field final synthetic val$clipboardText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/lang/CharSequence;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 336
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->val$clipboardText:Ljava/lang/CharSequence;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/lang/CharSequence;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 339
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->val$clipboardText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 340
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 344
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->val$clipboardText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->getPgpPublicKeyContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 346
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 351
    invoke-super {v0, v1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;--->onPostExecute(Ljava/lang/Boolean;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 336
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
