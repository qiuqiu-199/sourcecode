.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FlurryAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 263
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 276
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 270
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originVersion not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originName not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearLocation()V
    .locals 2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dz;->e()V

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 505
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 509
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 513
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 515
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 530
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 534
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 538
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 542
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 544
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to signify the end of event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getAgentVersion()I
    .locals 1

    .line 75
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->b()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseHttps()Z
    .locals 2

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 209
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 212
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 390
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 394
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to logEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 424
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 428
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 432
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String parameters passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 436
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 480
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 484
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 488
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String parameters passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 492
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 494
    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to log event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 3

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 453
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 457
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 461
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 2

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 356
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 364
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/dl;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null context"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 561
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 565
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 569
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 573
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorClass passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 579
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 585
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 589
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 593
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 597
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Throwable passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 603
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 614
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 618
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to onEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 622
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 624
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 636
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 640
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to onEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 644
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Parameters Map passed to onEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cx;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 650
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onPageView()V
    .locals 3

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 665
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 669
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cx;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 671
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 315
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/dl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 328
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Api key not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAge(I)V
    .locals 6

    .line 716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 717
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p0, :cond_1

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_1

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 724
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    .line 725
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Ljava/util/Date;-><init>(III)V

    .line 726
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 728
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object p0

    const-string v2, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 2

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 225
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 3

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 170
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 174
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setGender(B)V
    .locals 2

    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 739
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 749
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object p0

    const-string v0, "Gender"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 745
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setLocation(FF)V
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 109
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/dz;->a(FF)V

    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2

    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 697
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "LocationCriteria"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 2

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 132
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 136
    invoke-static {}, Lcom/flurry/sdk/el;->b()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/el;->a()V

    :goto_0
    return-void
.end method

.method public static setLogEvents(Z)V
    .locals 2

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 187
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 148
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/el;->a(I)V

    return-void
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 93
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 2

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 679
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 682
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReportUrl"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUseHttps(Z)V
    .locals 2

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 200
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .line 760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 761
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 765
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String userId passed to setUserId was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "UserId"

    invoke-static {p0}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 59
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 63
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String versionName passed to setVersionName was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
