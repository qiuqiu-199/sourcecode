.class Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;
.super Landroid/os/AsyncTask;
.source "BackupRestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->backupAllKeys()V
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
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

.field final synthetic val$keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 99
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->val$keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFirstSubKeyWithPassphrase(J)Ljava/lang/Long;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 134
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->val$keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSubKeysByMasterKeyId(J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 135
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$2;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    :pswitch_1
    return-object v0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;--->getFirstSubKeyWithPassphrase(J)Ljava/lang/Long;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 102
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v8

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 105
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    .line 108
    :try_start_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$2;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 126
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {v7, v3, v4}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->getFirstSubKeyWithPassphrase(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :catch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v0, "Error: no secret key type for secret key!"

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;--->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 152
    invoke-super {v1, v2}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;--->onPostExecute(Ljava/util/ArrayList;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Ljava/util/Iterator;)Ljava/util/Iterator;

    .line 160
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V

    return-void

    .line 165
    :cond_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Z)V

    return-void
.end method
