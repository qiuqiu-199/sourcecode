.class public abstract Lcom/google/android/gms/internal/zzyw$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzyw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzyw$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzyw;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzyw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzyw;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzyw$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzyw$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzyw$zza;->zzb(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return v1

    :pswitch_1
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/google/android/gms/cast/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/cast/zzf;

    :cond_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/gms/internal/zzyw$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;)V

    return v1

    :pswitch_2
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/cast/LaunchOptions;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzyw$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return v1

    :pswitch_3
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyw$zza;->zzcU(Ljava/lang/String;)V

    return v1

    :pswitch_4
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyw$zza;->zzcT(Ljava/lang/String;)V

    return v1

    :pswitch_5
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/google/android/gms/internal/zzyw$zza;->zza(Ljava/lang/String;[BJ)V

    return v1

    :pswitch_6
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/google/android/gms/internal/zzyw$zza;->zzb(Ljava/lang/String;Ljava/lang/String;J)V

    return v1

    :pswitch_7
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, p1, p3, p4, v2}, Lcom/google/android/gms/internal/zzyw$zza;->zza(ZDZ)V

    return v1

    :pswitch_8
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzyw$zza;->zza(DDZ)V

    return v1

    :pswitch_9
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyw$zza;->requestStatus()V

    return v1

    :pswitch_a
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyw$zza;->zzcK(Ljava/lang/String;)V

    return v1

    :pswitch_b
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyw$zza;->zzuL()V

    return v1

    :pswitch_c
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzyw$zza;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_d
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzyw$zza;->zzi(Ljava/lang/String;Z)V

    return v1

    :pswitch_e
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyw$zza;->disconnect()V

    return v1

    :cond_6
    const-string p1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
