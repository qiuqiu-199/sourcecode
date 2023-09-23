.class final Lcom/google/android/gms/plus/Plus$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza<",
        "Lcom/google/android/gms/plus/internal/zze;",
        "Lcom/google/android/gms/plus/Plus$PlusOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 0

    check-cast p4, Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/plus/Plus$1;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/zze;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/zze;
    .locals 18

    if-nez p4, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$1;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    :goto_0
    new-instance v8, Lcom/google/android/gms/plus/internal/zze;

    new-instance v5, Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzg;->zzxB()Landroid/accounts/Account;

    move-result-object v1

    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzg;->zzxM()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzv;->zzd(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lcom/google/android/gms/plus/Plus$PlusOptions;->zzbBK:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    new-array v13, v1, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/plus/internal/zzh;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/plus/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v8
.end method
