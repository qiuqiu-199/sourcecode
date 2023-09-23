.class public Lcom/google/android/gms/internal/zzafh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzafh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final type:I

.field public final zzaJE:Lcom/google/android/gms/internal/zzaen;

.field public zzaJF:Lcom/google/android/gms/internal/zzafb;

.field public final zzaJG:Lcom/google/android/gms/awareness/fence/zza;

.field public final zzaJH:Landroid/app/PendingIntent;

.field public final zzaJI:J

.field public final zzaJJ:J

.field public final zzaJv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzaen;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzafh;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafh;->zzaJE:Lcom/google/android/gms/internal/zzaen;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzafb$zza;->zzbF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzafb;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafh;->zzaJG:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafh;->zzaJH:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzafh;->zzaJv:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafh;->zzaJI:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafh;->zzaJJ:J

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/zzaen;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzafh;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafh;->zzaJE:Lcom/google/android/gms/internal/zzaen;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafh;->zzaJG:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafh;->zzaJH:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzafh;->zzaJv:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafh;->zzaJI:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafh;->zzaJJ:J

    return-void
.end method

.method public static final zza(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzafh;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzafh;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v0, v10

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzafh;-><init>(ILcom/google/android/gms/internal/zzaen;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v10
.end method

.method public static final zza(Ljava/lang/String;JLcom/google/android/gms/internal/zzaep;Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzafh;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzafh;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaen;->zza(Ljava/lang/String;JLcom/google/android/gms/internal/zzaep;)Lcom/google/android/gms/internal/zzaen;

    move-result-object v2

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v0, v10

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzafh;-><init>(ILcom/google/android/gms/internal/zzaen;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v10
.end method

.method public static final zzdC(Ljava/lang/String;)Lcom/google/android/gms/internal/zzafh;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzafh;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v0, v10

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzafh;-><init>(ILcom/google/android/gms/internal/zzaen;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v10
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafi;->zza(Lcom/google/android/gms/internal/zzafh;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzafb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzcj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcj<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzaem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafh;->zzaJG:Lcom/google/android/gms/awareness/fence/zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafh;->zzaJG:Lcom/google/android/gms/awareness/fence/zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcj;->zzc(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafh;->zzaJF:Lcom/google/android/gms/internal/zzafb;

    :cond_0
    return-void
.end method
