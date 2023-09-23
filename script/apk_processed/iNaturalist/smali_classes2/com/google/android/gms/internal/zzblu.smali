.class public Lcom/google/android/gms/internal/zzblu;
.super Lcom/google/android/gms/common/internal/zzl;

# interfaces
.implements Lcom/google/android/gms/internal/zzblt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/internal/zzblz;",
        ">;",
        "Lcom/google/android/gms/internal/zzblt;"
    }
.end annotation


# static fields
.field private static zzaiA:Lcom/google/android/gms/internal/zzacm;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbYc:Lcom/google/android/gms/internal/zzbma$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzacm;

    const-string v1, "FirebaseAuth"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FirebaseAuth:"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzacm;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzblu;->zzaiA:Lcom/google/android/gms/internal/zzacm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/internal/zzbma$zza;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzblu;->zzbYc:Lcom/google/android/gms/internal/zzbma$zza;

    return-void
.end method


# virtual methods
.method public synthetic zzVP()Lcom/google/android/gms/internal/zzblz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzblz;

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected zzfJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzblz;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzblz$zza;->zzfL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzblz;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzblu;->zzfJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzblz;

    move-result-object p1

    return-object p1
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->zzqL()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzblu;->zzbYc:Lcom/google/android/gms/internal/zzbma$zza;

    if-eqz v1, :cond_1

    const-string v1, "com.google.firebase.auth.API_KEY"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblu;->zzbYc:Lcom/google/android/gms/internal/zzbma$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbma$zza;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public zzvh()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzH(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected zzxv()Ljava/lang/String;
    .locals 6

    const-string v0, "firebear.preference"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbmg;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "default"

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x625df6b

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v5, 0x5c13d641

    if-eq v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v0, "default"

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzblu;->zzaiA:Lcom/google/android/gms/internal/zzacm;

    const-string v1, "Loading module via default loading order."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzacm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzH(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.gms.firebase_auth"

    invoke-static {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzI(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzblu;->zzaiA:Lcom/google/android/gms/internal/zzacm;

    const-string v1, "Loading remote module."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzacm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms"

    return-object v0

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/zzblu;->zzaiA:Lcom/google/android/gms/internal/zzacm;

    const-string v1, "Loading fallback module."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzacm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/zzblu;->zzaiA:Lcom/google/android/gms/internal/zzacm;

    const-string v1, "Loading fallback module override."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzacm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
