.class public Lcom/google/android/gms/internal/zzatd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzatd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final zzbhN:Ljava/lang/String;

.field public final zzbqL:Ljava/lang/String;

.field public final zzbqM:Ljava/lang/String;

.field public final zzbqN:J

.field public final zzbqO:J

.field public final zzbqP:Ljava/lang/String;

.field public final zzbqQ:Z

.field public final zzbqR:Z

.field public final zzbqS:J

.field public final zzbqT:Ljava/lang/String;

.field public final zzbqU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzate;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzate;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqP:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqR:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqP:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqR:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzate;->zza(Lcom/google/android/gms/internal/zzatd;Landroid/os/Parcel;I)V

    return-void
.end method
