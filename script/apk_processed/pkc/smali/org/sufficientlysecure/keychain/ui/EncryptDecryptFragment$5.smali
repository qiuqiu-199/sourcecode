.class Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;
.super Landroid/os/AsyncTask;
.source "EncryptDecryptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->checkClipboardForEncryptedText()V
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
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

.field final synthetic val$clipboardText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;Ljava/lang/CharSequence;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 126
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->val$clipboardText:Ljava/lang/CharSequence;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;Ljava/lang/CharSequence;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 129
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->val$clipboardText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 134
    :cond_0
    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_MESSAGE:Ljava/util/regex/Pattern;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->val$clipboardText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_CLEARTEXT_SIGNATURE:Ljava/util/regex/Pattern;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->val$clipboardText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 142
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 147
    invoke-super {v1, v2}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;--->onPostExecute(Ljava/lang/Boolean;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->mClipboardIcon:Landroid/view/View;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;->tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
