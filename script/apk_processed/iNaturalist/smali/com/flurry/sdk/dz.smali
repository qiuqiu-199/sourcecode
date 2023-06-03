.class public Lcom/flurry/sdk/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dq$a;
.implements Lcom/flurry/sdk/ey$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dz$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "dz"

.field private static q:Lcom/flurry/sdk/dz;


# instance fields
.field a:Z

.field b:Z

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:J

.field private h:J

.field private i:Landroid/location/LocationManager;

.field private j:Landroid/location/Criteria;

.field private k:Landroid/location/Location;

.field private l:Lcom/flurry/sdk/dz$a;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private volatile p:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lcom/flurry/sdk/dz;->d:I

    const-wide/16 v0, 0x2710

    .line 30
    iput-wide v0, p0, Lcom/flurry/sdk/dz;->e:J

    const-wide/32 v0, 0x15f90

    .line 31
    iput-wide v0, p0, Lcom/flurry/sdk/dz;->f:J

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/flurry/sdk/dz;->g:J

    .line 33
    iput-wide v0, p0, Lcom/flurry/sdk/dz;->h:J

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/flurry/sdk/dz;->a:Z

    .line 43
    iput v0, p0, Lcom/flurry/sdk/dz;->n:I

    .line 45
    iput v0, p0, Lcom/flurry/sdk/dz;->o:I

    .line 52
    new-instance v0, Lcom/flurry/sdk/dz$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dz$a;-><init>(Lcom/flurry/sdk/dz;)V

    iput-object v0, p0, Lcom/flurry/sdk/dz;->l:Lcom/flurry/sdk/dz$a;

    .line 54
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "LocationCriteria"

    .line 56
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    iput-object v1, p0, Lcom/flurry/sdk/dz;->j:Landroid/location/Criteria;

    const-string v1, "LocationCriteria"

    .line 57
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)V

    .line 58
    sget-object v1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LocationCriteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/dz;->j:Landroid/location/Criteria;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ReportLocation"

    .line 60
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/dz;->b:Z

    const-string v1, "ReportLocation"

    .line 61
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)V

    .line 62
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flurry/sdk/dz;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dz;)I
    .locals 1

    .line 22
    iget v0, p0, Lcom/flurry/sdk/dz;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dz;->o:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dz;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/dz;->k:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dz;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dz;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dz;->q:Lcom/flurry/sdk/dz;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/flurry/sdk/dz;

    invoke-direct {v1}, Lcom/flurry/sdk/dz;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dz;->q:Lcom/flurry/sdk/dz;

    .line 69
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dz;->q:Lcom/flurry/sdk/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flurry/sdk/dz;->l:Lcom/flurry/sdk/dz$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dz;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V

    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/dz;->l:Lcom/flurry/sdk/dz$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/flurry/sdk/dz;->a:Z

    .line 136
    iput v0, p0, Lcom/flurry/sdk/dz;->o:I

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/flurry/sdk/dz;->h:J

    .line 140
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->m()V

    .line 142
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v1, "LocationProvider stopped"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 151
    iget-boolean v0, p0, Lcom/flurry/sdk/dz;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V

    .line 167
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->k()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dz;->a(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dz;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dz;->k:Landroid/location/Location;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/dz;->h:J

    .line 173
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->l()V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/flurry/sdk/dz;->a:Z

    const/4 v0, 0x4

    .line 176
    sget-object v1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/dz;->j:Landroid/location/Criteria;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/dz;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dz;->m:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x4

    .line 191
    sget-object v2, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 246
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v1, "Register location timer"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->a(Lcom/flurry/sdk/ey$a;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 251
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v1, "Unregister location timer"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->b(Lcom/flurry/sdk/ey$a;)Z

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 124
    new-instance v0, Landroid/location/Location;

    const-string v1, "Explicit"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 126
    iget-object p1, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ey;)V
    .locals 4

    .line 239
    iget-wide v0, p0, Lcom/flurry/sdk/dz;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/flurry/sdk/dz;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x4

    .line 240
    sget-object v0, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v1, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "LocationCriteria"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 293
    check-cast p2, Landroid/location/Criteria;

    iput-object p2, p0, Lcom/flurry/sdk/dz;->j:Landroid/location/Criteria;

    .line 294
    sget-object p1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, LocationCriteria = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/dz;->j:Landroid/location/Criteria;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-boolean p1, p0, Lcom/flurry/sdk/dz;->a:Z

    if-eqz p1, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->j()V

    goto :goto_0

    :cond_0
    const-string v0, "ReportLocation"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/dz;->b:Z

    .line 302
    sget-object p1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, ReportLocation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flurry/sdk/dz;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-boolean p1, p0, Lcom/flurry/sdk/dz;->b:Z

    if-eqz p1, :cond_1

    .line 305
    iget-boolean p1, p0, Lcom/flurry/sdk/dz;->a:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/flurry/sdk/dz;->n:I

    if-lez p1, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->j()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 314
    sget-object p2, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v0, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key."

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/dz;->i:Landroid/location/LocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 82
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 92
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v2, "Location provider subscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/flurry/sdk/dz;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dz;->n:I

    .line 94
    iget-boolean v0, p0, Lcom/flurry/sdk/dz;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/dz;->o:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 91
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 100
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v2, "Location provider unsubscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/flurry/sdk/dz;->n:I

    if-gtz v0, :cond_0

    const/4 v0, 0x6

    .line 103
    sget-object v1, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    const-string v2, "Error! Unsubscribed too many times!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/dz;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/dz;->n:I

    .line 110
    iget v0, p0, Lcom/flurry/sdk/dz;->n:I

    if-nez v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    return-void
.end method

.method public f()Landroid/location/Location;
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/dz;->p:Landroid/location/Location;

    return-object v0

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dz;->b:Z

    if-eqz v0, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->k()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dz;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iput-object v0, p0, Lcom/flurry/sdk/dz;->k:Landroid/location/Location;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dz;->k:Landroid/location/Location;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 228
    sget-object v2, Lcom/flurry/sdk/dz;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/flurry/sdk/dz;->n:I

    .line 234
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->i()V

    return-void
.end method
