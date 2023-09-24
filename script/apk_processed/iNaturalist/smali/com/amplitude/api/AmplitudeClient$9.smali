.class Lcom/amplitude/api/AmplitudeClient$9;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->setUserId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$client:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iput-object p3, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1511
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    .line 1515
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
