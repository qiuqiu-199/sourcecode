.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;
.super Landroid/os/AsyncTask;
.source "CreateSecurityTokenPinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lorg/sufficientlysecure/keychain/util/Passphrase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 125
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 132
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;--->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->onPostExecute(Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 148
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 150
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mAdminPin:Landroid/widget/TextView;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;--->onPostExecute(Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
