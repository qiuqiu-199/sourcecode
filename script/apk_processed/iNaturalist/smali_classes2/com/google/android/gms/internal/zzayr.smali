.class Lcom/google/android/gms/internal/zzayr;
.super Ljava/lang/Object;


# direct methods
.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzayj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lcom/google/android/gms/internal/zzabh<",
            "TC;>;)",
            "Lcom/google/android/gms/internal/zzayj<",
            "TC;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/nearby/messages/StatusCallback;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzayo;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayo;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/nearby/messages/MessageListener;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/zzayk;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayk;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown callback of type "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
