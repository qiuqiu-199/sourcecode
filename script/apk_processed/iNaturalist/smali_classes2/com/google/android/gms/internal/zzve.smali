.class public Lcom/google/android/gms/internal/zzve;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzve;->zza(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/zzva;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/HintRequest;Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x7d0

    const/high16 v0, 0x10000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzqT()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzqT()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajC:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-object p0
.end method
