.class public final Lcom/google/android/gms/internal/zznf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mOrientation:I

.field private zzGr:Ljava/lang/String;

.field private zzLa:Z

.field private final zzLo:Lcom/google/android/gms/internal/zzmk;

.field private zzQx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzTR:Ljava/lang/String;

.field private zzTS:Ljava/lang/String;

.field private zzTT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzTU:Ljava/lang/String;

.field private zzTV:Ljava/lang/String;

.field private zzTW:Ljava/lang/String;

.field private zzTX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzTY:J

.field private zzTZ:Z

.field private final zzUa:J

.field private zzUb:J

.field private zzUc:Z

.field private zzUd:Z

.field private zzUe:Z

.field private zzUf:Z

.field private zzUg:Z

.field private zzUh:Ljava/lang/String;

.field private zzUi:Z

.field private zzUj:Lcom/google/android/gms/internal/zzoo;

.field private zzUk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUm:Z

.field private zzUn:Lcom/google/android/gms/internal/zzmp;

.field private zzUo:Z

.field private zzUp:Ljava/lang/String;

.field private zzUq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzUr:Z

.field private zzUs:Ljava/lang/String;

.field private zzUt:Lcom/google/android/gms/internal/zzor;

.field private zzUu:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznf;->zzTY:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzTZ:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznf;->zzUa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznf;->zzUb:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zznf;->mOrientation:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUc:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUd:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUe:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUg:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznf;->zzUh:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUi:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzLa:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUm:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zznf;->zzUo:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zznf;->zzTS:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzLo:Lcom/google/android/gms/internal/zzmk;

    return-void
.end method

.method private zzA(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUe:Z

    :cond_0
    return-void
.end method

.method private zzB(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUf:Z

    :cond_0
    return-void
.end method

.method private zzC(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Content-Vertical-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUg:Z

    :cond_0
    return-void
.end method

.method private zzD(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Gws-Query-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUh:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzE(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Fluid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUi:Z

    :cond_0
    return-void
.end method

.method private zzF(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "native_express"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzLa:Z

    return-void
.end method

.method private zzG(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Rewards"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzoo;->zzaR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzoo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUj:Lcom/google/android/gms/internal/zzoo;

    return-void
.end method

.method private zzH(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznf;->zzUk:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "X-Afma-Reward-Video-Start-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUk:Ljava/util/List;

    return-void
.end method

.method private zzI(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznf;->zzUl:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "X-Afma-Reward-Video-Complete-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUl:Ljava/util/List;

    return-void
.end method

.method private zzJ(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUm:Z

    const-string v1, "X-Afma-Use-Displayed-Impression"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zznf;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUm:Z

    return-void
.end method

.method private zzK(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUo:Z

    const-string v1, "X-Afma-Auto-Collect-Location"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zznf;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUo:Z

    return-void
.end method

.method private zzL(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Remote-Ping-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUq:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzM(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Auto-Protection-Configuration"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmp;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzmp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUn:Lcom/google/android/gms/internal/zzmp;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing configuration JSON"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzmp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzmp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUn:Lcom/google/android/gms/internal/zzmp;

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "https://pagead2.googlesyndication.com/pagead/gen_204"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "id"

    const-string v1, "gmob-apps-blocked-navigation"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznf;->zzTV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "debugDialog"

    iget-object v1, p0, Lcom/google/android/gms/internal/zznf;->zzTV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzmp;

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzBp:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "navigationURL"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "={NAVIGATION_URL}"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzmp;-><init>(ZLjava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznf;->zzUn:Lcom/google/android/gms/internal/zzmp;

    return-void
.end method

.method private zzN(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUp:Ljava/lang/String;

    return-void
.end method

.method private zzO(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Safe-Browsing"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzor;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUt:Lcom/google/android/gms/internal/zzor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing safe browsing header"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private zzP(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Pool"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "never_pool"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUu:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing interstitial pool header"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzd(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p0

    float-to-long p0, v0

    return-wide p0

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse float from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private zzf(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method private zzl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTR:Ljava/lang/String;

    return-void
.end method

.method private zzm(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Slot-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzUs:Ljava/lang/String;

    return-void
.end method

.method private zzn(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTT:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Debug-Signals"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTU:Ljava/lang/String;

    return-void
.end method

.method private zzp(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTV:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTX:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzr(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznf;->zzTY:J

    :cond_0
    return-void
.end method

.method private zzs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzTW:Ljava/lang/String;

    return-void
.end method

.method private zzt(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUd:Z

    return-void
.end method

.method private zzu(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUc:Z

    const-string v1, "X-Afma-Custom-Rendering-Allowed"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zznf;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUc:Z

    return-void
.end method

.method private zzv(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzTZ:Z

    const-string v1, "X-Afma-Mediation"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zznf;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzTZ:Z

    return-void
.end method

.method private zzw(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznf;->zzUr:Z

    const-string v1, "X-Afma-Render-In-Browser"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zznf;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznf;->zzUr:Z

    return-void
.end method

.method private zzx(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf;->zzQx:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzy(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznf;->zzUb:J

    :cond_0
    return-void
.end method

.method private zzz(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zznf;->mOrientation:I

    goto :goto_1

    :cond_0
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/google/android/gms/internal/zznf;->zzGr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zznf;->zzk(Ljava/util/Map;)V

    return-void
.end method

.method public zzj(J)Lcom/google/android/gms/internal/zzmn;
    .locals 44

    move-object/from16 v0, p0

    move-wide/from16 v17, p1

    new-instance v43, Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v1, v43

    iget-object v2, v0, Lcom/google/android/gms/internal/zznf;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v0, Lcom/google/android/gms/internal/zznf;->zzTS:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zznf;->zzGr:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zznf;->zzTT:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/zznf;->zzTX:Ljava/util/List;

    iget-wide v7, v0, Lcom/google/android/gms/internal/zznf;->zzTY:J

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zznf;->zzTZ:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/zznf;->zzQx:Ljava/util/List;

    iget-wide v13, v0, Lcom/google/android/gms/internal/zznf;->zzUb:J

    iget v15, v0, Lcom/google/android/gms/internal/zznf;->mOrientation:I

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzTR:Ljava/lang/String;

    move-object/from16 v16, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzTV:Ljava/lang/String;

    move-object/from16 v19, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzTW:Ljava/lang/String;

    move-object/from16 v20, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUc:Z

    move/from16 v21, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUd:Z

    move/from16 v22, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUe:Z

    move/from16 v23, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUf:Z

    move/from16 v24, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUh:Ljava/lang/String;

    move-object/from16 v26, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUi:Z

    move/from16 v27, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzLa:Z

    move/from16 v28, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUj:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v29, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUk:Ljava/util/List;

    move-object/from16 v30, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUl:Ljava/util/List;

    move-object/from16 v31, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUm:Z

    move/from16 v32, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUn:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v33, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUo:Z

    move/from16 v34, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUp:Ljava/lang/String;

    move-object/from16 v35, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUq:Ljava/util/List;

    move-object/from16 v36, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUr:Z

    move/from16 v37, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUs:Ljava/lang/String;

    move-object/from16 v38, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzUt:Lcom/google/android/gms/internal/zzor;

    move-object/from16 v39, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/zznf;->zzTU:Ljava/lang/String;

    move-object/from16 v40, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUg:Z

    move/from16 v41, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zznf;->zzUu:Z

    move/from16 v42, v10

    const-wide/16 v10, -0x1

    const/16 v25, 0x0

    invoke-direct/range {v1 .. v42}, Lcom/google/android/gms/internal/zzmn;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    return-object v43
.end method

.method public zzk(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzl(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzm(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzn(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzo(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzp(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzq(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzr(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzv(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzx(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzy(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzz(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzs(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzA(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzu(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzt(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzB(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzC(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzD(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzE(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzF(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzG(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzH(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzI(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzJ(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzK(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzN(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzM(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzL(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzO(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzw(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznf;->zzP(Ljava/util/Map;)V

    return-void
.end method
