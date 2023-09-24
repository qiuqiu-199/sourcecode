.class Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;
.super Landroid/os/AsyncTask;
.source "SecurityTokenOperationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

.field final synthetic val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 329
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;---><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 329
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 334
    :catch_0
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v0, 0xc8

    .line 336
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 347
    invoke-super {v0, v1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;--->onPostExecute(Ljava/lang/Void;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->finish()V

    return-void
.end method
