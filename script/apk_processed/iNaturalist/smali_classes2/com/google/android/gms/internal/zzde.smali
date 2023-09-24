.class public Lcom/google/android/gms/internal/zzde;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzde$zza;
    }
.end annotation


# instance fields
.field private mStarted:Z

.field private zzal:Z

.field private final zzrJ:Ljava/lang/Object;

.field private zzxO:Z

.field private final zzxP:Lcom/google/android/gms/internal/zzdc;

.field private final zzxQ:Lcom/google/android/gms/internal/zzmd;

.field private final zzxR:I

.field private final zzxS:I

.field private final zzxT:I

.field private final zzxU:I

.field private final zzxV:I

.field private final zzxW:I

.field private final zzxX:Ljava/lang/String;

.field private final zzxp:I

.field private final zzxr:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzmd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzde;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzde;->zzal:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzde;->zzxP:Lcom/google/android/gms/internal/zzdc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzde;->zzxQ:Lcom/google/android/gms/internal/zzmd;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCd:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxp:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCe:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxS:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCf:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxr:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxT:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCj:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxU:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCl:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxV:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCm:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxW:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzde;->zzxR:I

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCo:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzde;->zzxX:Ljava/lang/String;

    const-string p1, "ContentFetchTask"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzde;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzde;->zzek()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzde;->zzem()V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzde;->zza(Landroid/app/Activity;)V

    goto :goto_2

    :cond_1
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/zzde;->zzxR:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzde;->zzxQ:Lcom/google/android/gms/internal/zzmd;

    const-string v2, "ContentFetchTask.run"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzmd;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :catch_2
    :goto_4
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "ContentFetchTask: waiting"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_2
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public wakeup()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zza(Landroid/view/View;Lcom/google/android/gms/internal/zzdb;)Lcom/google/android/gms/internal/zzde$zza;
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdd;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzgd;->zzCn:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzde;->zzxX:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzde;->zzxX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_3

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/zzdb;->zzb(Ljava/lang/String;ZFFFF)V

    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_3
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lcom/google/android/gms/internal/zzqw;

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdb;->zzef()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/android/gms/internal/zzde;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzdb;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzde;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzdb;)Lcom/google/android/gms/internal/zzde$zza;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/zzde$zza;->zzyf:I

    add-int/2addr v1, v4

    iget v3, v3, Lcom/google/android/gms/internal/zzde$zza;->zzyg:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/zzde$zza;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/zzde$zza;-><init>(Lcom/google/android/gms/internal/zzde;II)V

    return-object p1
.end method

.method zza(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    const-string v2, "ContentFetchTask.extractContent"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "Failed getting root view of activity. Content not extracted."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzde;->zzh(Landroid/view/View;)Z

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzdb;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdb;->zzee()V

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/lang/String;ZFFFF)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdb;->zzdZ()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzde;->zzxP:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzdc;->zzb(Lcom/google/android/gms/internal/zzdb;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to get webview content."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzde;->zzxQ:Lcom/google/android/gms/internal/zzmd;

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/zzmd;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p1, "Json string may be malformed."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 1

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzdb;Z)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdb;->zzef()V

    new-instance v0, Lcom/google/android/gms/internal/zzde$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzde$2;-><init>(Lcom/google/android/gms/internal/zzde;Lcom/google/android/gms/internal/zzdb;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public zzej()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->mStarted:Z

    if-eqz v1, :cond_0

    const-string v1, "Content hash thread already started, quiting..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->mStarted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzde;->start()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method zzek()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdd;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzde;->zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzde;->zzi(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method public zzel()Lcom/google/android/gms/internal/zzdb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzxP:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdc;->zzei()Lcom/google/android/gms/internal/zzdb;

    move-result-object v0

    return-object v0
.end method

.method public zzem()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzde;->zzxO:Z

    return v0
.end method

.method zzh(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzde$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzde$1;-><init>(Lcom/google/android/gms/internal/zzde;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method zzi(Landroid/view/View;)V
    .locals 9

    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/zzdb;

    iget v1, p0, Lcom/google/android/gms/internal/zzde;->zzxp:I

    iget v2, p0, Lcom/google/android/gms/internal/zzde;->zzxS:I

    iget v3, p0, Lcom/google/android/gms/internal/zzde;->zzxr:I

    iget v4, p0, Lcom/google/android/gms/internal/zzde;->zzxT:I

    iget v5, p0, Lcom/google/android/gms/internal/zzde;->zzxU:I

    iget v6, p0, Lcom/google/android/gms/internal/zzde;->zzxV:I

    iget v7, p0, Lcom/google/android/gms/internal/zzde;->zzxW:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzdb;-><init>(IIIIIII)V

    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/zzde;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzdb;)Lcom/google/android/gms/internal/zzde$zza;

    move-result-object p1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzdb;->zzeg()V

    iget v0, p1, Lcom/google/android/gms/internal/zzde$zza;->zzyf:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzde$zza;->zzyg:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzde$zza;->zzyg:I

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzdb;->zzeh()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget p1, p1, Lcom/google/android/gms/internal/zzde$zza;->zzyg:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzde;->zzxP:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/zzdc;->zza(Lcom/google/android/gms/internal/zzdb;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzde;->zzxP:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/zzdc;->zzc(Lcom/google/android/gms/internal/zzdb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde;->zzxQ:Lcom/google/android/gms/internal/zzmd;

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzmd;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method zzi(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    return p1
.end method
