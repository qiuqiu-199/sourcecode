.class public Lcom/google/android/gms/drive/zzk;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/zzk$zza;
    }
.end annotation


# instance fields
.field private zzaLf:Ljava/lang/String;

.field private zzaLg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-object p3, p0, Lcom/google/android/gms/drive/zzk;->zzaLf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzk;->zzaLg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzk$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/drive/zzk;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/zzk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzk$zza;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzAw()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzAu()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzk$zza;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzAv()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/drive/zzk$zza;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "May not set a conflict strategy for new file creation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzk$zza;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/zzk;

    return-object p0
.end method


# virtual methods
.method public zzAy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzk;->zzaLf:Ljava/lang/String;

    return-object v0
.end method

.method public zzAz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzk;->zzaLg:Ljava/lang/String;

    return-object v0
.end method
