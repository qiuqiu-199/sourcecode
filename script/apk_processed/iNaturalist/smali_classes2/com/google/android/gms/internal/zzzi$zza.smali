.class public abstract Lcom/google/android/gms/internal/zzzi$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzi$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzi;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzzi;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzzi;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzzi$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzi$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzh$zza;->zzbj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzh;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzj$zza;->zzbl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzj;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzzi$zza;->zza(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/internal/zzzj;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    :pswitch_1
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzh$zza;->zzbj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzi$zza;->zza(Lcom/google/android/gms/internal/zzzh;)V

    return v1

    :pswitch_2
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzh$zza;->zzbj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzh;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzzi$zza;->zza(Lcom/google/android/gms/internal/zzzh;I)V

    return v1

    :pswitch_3
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzh$zza;->zzbj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzh;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/zzzj$zza;->zzbl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzj;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/zzzi$zza;->zza(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/internal/zzzj;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_4
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzi$zza;->disconnect()V

    return v1

    :pswitch_5
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzi$zza;->destroy()V

    return v1

    :cond_1
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
