.class Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;
.super Landroid/os/AsyncTask;
.source "BaseSecurityTokenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->securityTokenDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/Transport;)V
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
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

.field final synthetic val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 137
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/IOException;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 147
    :try_start_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->connectIfNecessary(Landroid/content/Context;)V

    .line 149
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->handleSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;--->doInBackground([Ljava/lang/Void;)Ljava/io/IOException;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/IOException;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 159
    invoke-super {v2, v3}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;--->onPostExecute(Ljava/io/IOException;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 162
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Ljava/io/IOException;)V

    return-void

    .line 166
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->val$stConnection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->onPostExecute(Ljava/io/IOException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    move-object/16 v1, p0

    .line 140
    invoke-super {v1}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;--->onPreExecute()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPreExecute()V

    return-void
.end method
