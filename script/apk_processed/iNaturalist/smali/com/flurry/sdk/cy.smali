.class public Lcom/flurry/sdk/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "cy"


# instance fields
.field a:Z

.field private final c:Lcom/flurry/sdk/cz;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/flurry/sdk/cz;

    invoke-direct {v0}, Lcom/flurry/sdk/cz;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cy;->c:Lcom/flurry/sdk/cz;

    const-string v0, ".flurryinstallreceiver."

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    .line 32
    sget-object p1, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Referrer file name if it exists:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/flurry/sdk/cy;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/flurry/sdk/cy;->a:Z

    const/4 v0, 0x4

    .line 80
    sget-object v1, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading referrer info from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/fa;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referrer file contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cy;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/cy;->e:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/flurry/sdk/cy;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/cy;->b()V

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/cy;->c:Lcom/flurry/sdk/cz;

    iget-object v1, p0, Lcom/flurry/sdk/cy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/cy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cy;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/flurry/sdk/cy;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/flurry/sdk/cy;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/cy;->a:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cy;->b(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/flurry/sdk/cy;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method
