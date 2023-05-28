.class public Lcom/google/android/gms/drive/zzk$zza;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzk$zza;->zzAA()Lcom/google/android/gms/drive/zzk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzei(I)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzay(Z)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzdF(Ljava/lang/String;)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzAA()Lcom/google/android/gms/drive/zzk;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzk$zza;->zzAx()V

    new-instance v7, Lcom/google/android/gms/drive/zzk;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaLc:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaLd:Z

    iget v5, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaLe:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/zzk;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzk$1;)V

    return-object v7
.end method

.method public zzay(Z)Lcom/google/android/gms/drive/zzk$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzdF(Ljava/lang/String;)Lcom/google/android/gms/drive/zzk$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzei(I)Lcom/google/android/gms/drive/zzk$zza;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
