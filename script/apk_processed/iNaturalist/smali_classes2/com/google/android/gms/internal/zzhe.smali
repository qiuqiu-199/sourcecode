.class public Lcom/google/android/gms/internal/zzhe;
.super Lcom/google/android/gms/internal/zzhh$zza;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field static final zzHf:[Ljava/lang/String;


# instance fields
.field zzGA:Lcom/google/android/gms/internal/zzha;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzHg:Landroid/widget/FrameLayout;

.field zzHh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field zzHi:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzHj:Z

.field zzHk:Landroid/graphics/Point;

.field zzHl:Landroid/graphics/Point;

.field zzHm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzcy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;

.field zzrY:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2011"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1009"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzhe;->zzHf:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhh$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHj:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHk:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHl:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzhb;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhb;->zzfY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    const-string v3, "1098"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzhe;->zza(Lcom/google/android/gms/internal/zzhb;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhb;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhe;->zzp(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/AdChoicesView;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/internal/zzhb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhe;->zzb(Lcom/google/android/gms/internal/zzhb;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzhb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhe;->zzgk()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhb;->zzgd()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzhe$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzhe$2;-><init>(Lcom/google/android/gms/internal/zzhe;Landroid/view/View;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzhb;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzgy;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zzgk()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzhe;->zzHf:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHk:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHl:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getMeasuredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getMeasuredWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHk:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzhe;->zzC(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHk:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzhe;->zzC(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHl:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzhe;->zzC(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHl:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzhe;->zzC(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Unable to get click location"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHi:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzgz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v1, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgz;->zzga()Lcom/google/android/gms/internal/zzha;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v1, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgz;->zzga()Lcom/google/android/gms/internal/zzha;

    move-result-object v1

    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    :goto_1
    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-interface {v1, p1, v2, v4, v3}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Landroid/view/View;)V

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHj:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhe;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhe;->getMeasuredHeight()I

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHj:Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzha;->zzd(Landroid/view/View;Ljava/util/Map;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzha;->zzd(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzhe;->zze(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHk:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzHl:Landroid/graphics/Point;

    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzha;->zzd(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method zzC(I)I
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzha;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqe;->zzc(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public zzU(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zza(Lcom/google/android/gms/internal/zzhb;Z)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/zzhb;->zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzow;->zzjS()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcy;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcy;->zzdY()V

    :cond_0
    return-void
.end method

.method public zzd(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1098"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zze(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzhe;->zzj(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/zzhb;

    if-nez v2, :cond_0

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHj:Z

    check-cast p1, Lcom/google/android/gms/internal/zzhb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzEp:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/zzha;->zzc(Landroid/view/View;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhe;->zzgj()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v2, v2, Lcom/google/android/gms/internal/zzgz;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v2, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzgz;->zzfZ()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v1, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzgz;->zzc(Lcom/google/android/gms/internal/zzha;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v2, p1, Lcom/google/android/gms/internal/zzgz;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzgz;->zzc(Lcom/google/android/gms/internal/zzha;)V

    :cond_4
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzEp:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhe;->zza(Lcom/google/android/gms/internal/zzhb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHh:Ljava/util/Map;

    invoke-virtual {p1, v1, v2, p0, p0}, Lcom/google/android/gms/internal/zzhb;->zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzhe$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzhe$1;-><init>(Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/internal/zzhb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzhe;->zzj(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhe;->zzgi()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzgi()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzhb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v0, Lcom/google/android/gms/internal/zzhb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->zzjS()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzcy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->zzHg:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->zzgg()Lcom/google/android/gms/internal/zzov;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcy$zzb;)V

    :cond_2
    return-void
.end method

.method zzgj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzhb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v0, Lcom/google/android/gms/internal/zzhb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->zzjS()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->zzgg()Lcom/google/android/gms/internal/zzov;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzov;->zzC(Z)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzHm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcy;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcy;->zzb(Lcom/google/android/gms/internal/zzcy$zzb;)V

    :cond_2
    return-void
.end method

.method zzj(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzgz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    check-cast v0, Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgz;->zzga()Lcom/google/android/gms/internal/zzha;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzGA:Lcom/google/android/gms/internal/zzha;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzha;->zzj(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method zzp(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/AdChoicesView;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
