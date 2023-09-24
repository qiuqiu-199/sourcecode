.class public abstract Lcom/google/android/gms/wearable/internal/zzbw$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzbw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzbw$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfD(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbw;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/zzbw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbw$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzbw$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzm(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzl(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzk(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zze(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzd(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/net/Uri;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/net/Uri;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :cond_4
    move-object v5, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :cond_5
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzj(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/wearable/internal/zzbt$zza;->zzfA(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbt;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzbt;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/wearable/internal/zzbt$zza;->zzfA(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbt;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzbt;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzf(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzi(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzc(Lcom/google/android/gms/wearable/internal/zzbu;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    sget-object p4, Lcom/google/android/gms/wearable/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzk;

    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzh(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzg(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzc(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzf(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zze(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    sget-object p4, Lcom/google/android/gms/wearable/internal/zzck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzck;

    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzck;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lcom/google/android/gms/wearable/internal/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzc;

    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzd(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzc(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_25
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/Asset;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_26
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_27
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzc(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_28
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_29
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2a
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    :cond_d
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2b
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    sget-object p4, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/PutDataRequest;

    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/PutDataRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2c
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzp(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2d
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzo(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2e
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzn(Lcom/google/android/gms/wearable/internal/zzbu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2f
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbu$zza;->zzfB(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f

    sget-object p4, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzb(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_10
    const-string p1, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
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
