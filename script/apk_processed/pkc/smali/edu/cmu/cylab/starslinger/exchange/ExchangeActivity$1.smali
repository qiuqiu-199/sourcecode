.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 89
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 91
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsers()I

    move-result v0

    .line 92
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v1

    invoke-virtual {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsersMatchNonces()I

    move-result v1

    .line 93
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v2

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsersKeyNodes()I

    move-result v2

    .line 94
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v3

    invoke-virtual {v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsersSigs()I

    move-result v3

    .line 95
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v4

    invoke-virtual {v4}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsersData()I

    move-result v4

    .line 96
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v5

    invoke-virtual {v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsersCommit()I

    move-result v5

    add-int v6, v5, v4

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-lez v1, :cond_0

    mul-int/lit8 v9, v0, 0x4

    if-le v6, v9, :cond_0

    goto :goto_0

    :cond_0
    if-le v2, v7, :cond_1

    mul-int/lit8 v1, v0, 0x3

    if-le v6, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    mul-int/lit8 v1, v0, 0x2

    if-le v6, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    mul-int/lit8 v1, v0, 0x1

    if-le v6, v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    mul-int/lit8 v0, v0, 0x0

    if-le v6, v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_5

    .line 114
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    sget v2, Ledu/cmu/cylab/starslinger/exchange/R$string;->label_ReceivedNItems:I

    invoke-virtual {v0, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    .line 114
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s\n\n%s"

    .line 116
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$100()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 118
    :cond_5
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$200(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$300(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
