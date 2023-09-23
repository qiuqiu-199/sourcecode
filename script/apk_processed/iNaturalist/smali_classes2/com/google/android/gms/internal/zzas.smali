.class public abstract Lcom/google/android/gms/internal/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzar;


# instance fields
.field protected zzpF:Landroid/view/MotionEvent;

.field protected zzpG:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzpH:J

.field protected zzpI:J

.field protected zzpJ:J

.field protected zzpK:J

.field protected zzpL:J

.field protected zzpM:J

.field protected zzpN:J

.field private zzpO:Z

.field protected zzpP:Z

.field protected zzpQ:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpI:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpJ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpK:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpL:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpM:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpN:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzas;->zzpO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzas;->zzpP:Z

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzao;->zzO()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzas;->zzpQ:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;
    .locals 1

    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p5}, Lcom/google/android/gms/internal/zzae$zza;->zzc([B)Lcom/google/android/gms/internal/zzae$zza;

    move-result-object p5
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzas;->zzpO:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzae$zza;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzag$zza;->zzaeT()I

    move-result p4

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lcom/google/android/gms/internal/zzas;->zzb(Z)Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzao;->zza(Lcom/google/android/gms/internal/zzag$zza;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_3
    :goto_2
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const/4 p1, 0x3

    goto :goto_3

    :catch_2
    const/4 p1, 0x7

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbe;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbe;->zzcf:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbe;->zzqM:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbe;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpQ:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbe;->zzcd:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbe;->zzqN:Ljava/lang/Long;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static zzb(Z)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDP:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDV:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzba;
        }
    .end annotation
.end method

.method protected abstract zza(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/zzag$zza;
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzae$zza;)Lcom/google/android/gms/internal/zzag$zza;
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzbf;->zzbc()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDU:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The caller must not be called from the UI thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzas;->zzpQ:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    move/from16 v1, p3

    int-to-long v4, v1

    const/4 v6, 0x1

    move/from16 v1, p1

    int-to-float v1, v1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzas;->zzpQ:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v1

    move/from16 v1, p2

    int-to-float v1, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzas;->zzpQ:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzas;->zzpP:Z

    return-void
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzas;->zzpO:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpK:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpJ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpI:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpL:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpN:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzas;->zzpM:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzas;->zzpO:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpK:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpK:J

    goto/16 :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpI:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpI:J

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzas;->zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/zzbe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzas;->zza(Lcom/google/android/gms/internal/zzbe;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpM:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbe;->zzcf:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbe;->zzqM:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v0, 0x0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpM:J

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzas;->zzb(Lcom/google/android/gms/internal/zzbe;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpN:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbe;->zzcd:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbe;->zzqN:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 p1, 0x0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpN:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzba; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzas;->zzpF:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzas;->zzpG:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpJ:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpJ:J

    :try_start_1
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzas;->zza([Ljava/lang/StackTraceElement;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzas;->zzpL:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzba; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpH:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzas;->zzpH:J

    :catch_0
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzas;->zzpP:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/zzbe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzba;
        }
    .end annotation
.end method

.method public zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/zzbf;->zzbc()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDU:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
