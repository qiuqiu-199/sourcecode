.class Lcom/google/android/gms/cast/framework/SessionProvider$zza;
.super Lcom/google/android/gms/cast/framework/zzp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/SessionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaqK:Lcom/google/android/gms/cast/framework/SessionProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/SessionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzaqK:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzp$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/SessionProvider;Lcom/google/android/gms/cast/framework/SessionProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/SessionProvider$zza;-><init>(Lcom/google/android/gms/cast/framework/SessionProvider;)V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzaqK:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSessionRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzaqK:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->isSessionRecoverable()Z

    move-result v0

    return v0
.end method

.method public zzcL(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzaqK:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionProvider;->createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->zzsN()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method
