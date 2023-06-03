.class Lcom/amplitude/api/AmplitudeClient$15$1;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amplitude/api/AmplitudeClient$15;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient$15;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$15$1;->this$1:Lcom/amplitude/api/AmplitudeClient$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$15$1;->this$1:Lcom/amplitude/api/AmplitudeClient$15;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient$15;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$15$1;->this$1:Lcom/amplitude/api/AmplitudeClient$15;

    iget-object v1, v1, Lcom/amplitude/api/AmplitudeClient$15;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$900(Lcom/amplitude/api/AmplitudeClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V

    return-void
.end method
