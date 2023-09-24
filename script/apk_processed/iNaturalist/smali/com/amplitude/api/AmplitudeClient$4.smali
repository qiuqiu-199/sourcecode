.class Lcom/amplitude/api/AmplitudeClient$4;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->setOptOut(Z)Lcom/amplitude/api/AmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$client:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$optOut:Z


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Z)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iput-boolean p3, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$optOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-boolean v1, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$optOut:Z

    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$102(Lcom/amplitude/api/AmplitudeClient;Z)Z

    .line 468
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$4;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "opt_out"

    iget-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient$4;->val$optOut:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    return-void
.end method
