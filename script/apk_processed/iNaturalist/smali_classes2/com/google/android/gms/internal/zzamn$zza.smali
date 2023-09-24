.class public abstract Lcom/google/android/gms/internal/zzamn$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzamn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzamn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzamn$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamn;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzamn;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzamn;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzamn$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzamn$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, v0, :cond_b

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzanc;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Lcom/google/android/gms/internal/zzanc;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_1
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(ILcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzc(Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/drive/DriveId;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(ZLcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamo$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamo;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzamo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamd$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzc(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn$zza;->zzBM()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v2, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamg$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamg;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzamg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/zzamb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzamb;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamb;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamm$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamm;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzami$zza;->zzbU(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzami;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamj$zza;->zzbV(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamd$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzame$zza;->zzbQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzame;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamf$zza;->zzbR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(ILcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamm$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamm;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Lcom/google/android/gms/internal/zzamm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaml$zza;->zzbX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaml;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaml;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/zzamu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzamu;

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamo$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamo;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamu;Lcom/google/android/gms/internal/zzamo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamd$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zze(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamd$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzd(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamh$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamh;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzamh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamg$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamg;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/zzamb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzamb;

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamb;Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/zzalz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzalz;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzalz;Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamh$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamh;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzamh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamh$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamh;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v2, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzamh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v2, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_25
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamm$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamm;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzamm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_26
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamg$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamg;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_27
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_28
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_29
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2a
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamo$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2b
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamm$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamm;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2c
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2d
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamk$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamk;

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2e
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamm$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamm;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2f
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamg$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamg;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzamg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_30
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamp$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_31
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamd$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_32
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzamo$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzamn$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_b
    const-string p1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
