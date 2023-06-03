.class public Lcom/flurry/sdk/dd;
.super Lcom/flurry/sdk/de;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dq$a;


# static fields
.field static a:Ljava/lang/String; = null

.field static b:Ljava/lang/String; = "http://data.flurry.com/aap.do"

.field static c:Ljava/lang/String; = "https://data.flurry.com/aap.do"

.field private static final h:Ljava/lang/String; = "dd"


# instance fields
.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dd;-><init>(Lcom/flurry/sdk/de$a;)V

    return-void
.end method

.method constructor <init>(Lcom/flurry/sdk/de$a;)V
    .locals 2

    const-string v0, "Analytics"

    .line 48
    const-class v1, Lcom/flurry/sdk/dd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/de;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AnalyticsData_"

    .line 49
    iput-object v0, p0, Lcom/flurry/sdk/dd;->g:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dd;->g()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dd;->a(Lcom/flurry/sdk/de$a;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ".do"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 93
    sget-object v1, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    sput-object p1, Lcom/flurry/sdk/dd;->a:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .locals 5

    .line 55
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "UseHttps"

    .line 57
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/dd;->i:Z

    const-string v1, "UseHttps"

    .line 58
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)V

    .line 59
    sget-object v1, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UseHttps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flurry/sdk/dd;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ReportUrl"

    .line 61
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ReportUrl"

    .line 62
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/flurry/sdk/dd;->b(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSettings, ReportUrl = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/flurry/sdk/dd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/flurry/sdk/dd;->a:Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dd;->i:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/flurry/sdk/dd;->c:Ljava/lang/String;

    return-object v0

    .line 108
    :cond_1
    sget-object v0, Lcom/flurry/sdk/dd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "UseHttps"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/dd;->i:Z

    .line 76
    sget-object p1, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, UseHttps = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flurry/sdk/dd;->i:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "ReportUrl"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    check-cast p2, Ljava/lang/String;

    .line 79
    invoke-direct {p0, p2}, Lcom/flurry/sdk/dd;->b(Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 82
    sget-object p2, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 158
    new-instance v0, Lcom/flurry/sdk/dd$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/dd$2;-><init>(Lcom/flurry/sdk/dd;I)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dd;->a(Lcom/flurry/sdk/fc;)V

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/de;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/dd;->a()Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/flurry/sdk/dd;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlurryDataSender: start upload data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/flurry/sdk/ei;

    invoke-direct {v1}, Lcom/flurry/sdk/ei;-><init>()V

    .line 120
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$a;)V

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 122
    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/flurry/sdk/et;

    invoke-direct {v0}, Lcom/flurry/sdk/et;-><init>()V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/eu;)V

    .line 124
    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Lcom/flurry/sdk/dd$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/flurry/sdk/dd$1;-><init>(Lcom/flurry/sdk/dd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 153
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    return-void
.end method
