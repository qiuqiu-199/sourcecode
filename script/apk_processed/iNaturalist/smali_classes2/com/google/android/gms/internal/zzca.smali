.class public abstract Lcom/google/android/gms/internal/zzca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final className:Ljava/lang/String;

.field protected final zzpz:Lcom/google/android/gms/internal/zzbd;

.field protected final zzqV:Lcom/google/android/gms/internal/zzag$zza;

.field protected final zzrc:Ljava/lang/String;

.field protected zzre:Ljava/lang/reflect/Method;

.field protected final zzri:I

.field protected final zzrj:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzca;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzca;->zzpz:Lcom/google/android/gms/internal/zzbd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzca;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzca;->zzrc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzca;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    iput p5, p0, Lcom/google/android/gms/internal/zzca;->zzri:I

    iput p6, p0, Lcom/google/android/gms/internal/zzca;->zzrj:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzca;->zzbk()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzbd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public zzbk()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzca;->zzpz:Lcom/google/android/gms/internal/zzbd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzca;->className:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzca;->zzrc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzbd;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzca;->zzre:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzca;->zzre:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzca;->zzbd()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzca;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbd;->zzaP()Lcom/google/android/gms/internal/zzaq;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/zzca;->zzri:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/zzca;->zzrj:I

    iget v5, p0, Lcom/google/android/gms/internal/zzca;->zzri:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzaq;->zza(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
