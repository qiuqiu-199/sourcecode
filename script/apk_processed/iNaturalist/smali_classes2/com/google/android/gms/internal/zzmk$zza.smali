.class public final Lcom/google/android/gms/internal/zzmk$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzKJ:Z

.field public final zzRB:Ljava/lang/String;

.field public final zzRC:Ljava/lang/String;

.field public final zzRD:Landroid/os/Bundle;

.field public final zzRE:I

.field public final zzRF:Landroid/os/Bundle;

.field public final zzRG:Z

.field public final zzRH:I

.field public final zzRI:I

.field public final zzRJ:Ljava/lang/String;

.field public final zzRK:J

.field public final zzRL:Ljava/lang/String;

.field public final zzRM:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzRN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzRQ:Ljava/lang/String;

.field public final zzRR:F

.field public final zzRS:I

.field public final zzRT:I

.field public final zzRU:Z

.field public final zzRV:Z

.field public final zzRX:Z

.field public final zzRY:Ljava/lang/String;

.field public final zzRZ:I

.field public final zzRx:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzRy:Lcom/google/android/gms/internal/zzec;

.field public final zzRz:Landroid/content/pm/PackageInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSa:Landroid/os/Bundle;

.field public final zzSb:Ljava/lang/String;

.field public final zzSc:Z

.field public final zzSd:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSh:Z

.field public final zzSi:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;"
        }
    .end annotation
.end field

.field public final zzSj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzSk:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzvF:Lcom/google/android/gms/internal/zzhc;

.field public final zzvH:Lcom/google/android/gms/internal/zzfc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzvK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzvk:Ljava/lang/String;

.field public final zzvl:Ljava/lang/String;

.field public final zzvn:Lcom/google/android/gms/internal/zzqh;

.field public final zzvr:Lcom/google/android/gms/internal/zzeg;

.field public final zzxk:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhc;Ljava/util/concurrent/Future;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/zzfc;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/content/pm/PackageInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p39    # Lcom/google/android/gms/internal/zzfc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzec;",
            "Lcom/google/android/gms/internal/zzeg;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZIIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhc;",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfc;",
            "Z",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRx:Landroid/os/Bundle;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRy:Lcom/google/android/gms/internal/zzec;

    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvl:Ljava/lang/String;

    move-object v2, p5

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRz:Landroid/content/pm/PackageInfo;

    move-object v2, p7

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRB:Ljava/lang/String;

    move-object v2, p8

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRC:Ljava/lang/String;

    move-object v2, p9

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvn:Lcom/google/android/gms/internal/zzqh;

    move-object v2, p10

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRD:Landroid/os/Bundle;

    move/from16 v2, p14

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRG:Z

    move/from16 v2, p15

    iput v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRH:I

    move/from16 v2, p16

    iput v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRI:I

    move/from16 v2, p17

    iput v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzxk:F

    if-eqz v1, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRE:I

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvK:Ljava/util/List;

    move-object v1, p12

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRE:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvK:Ljava/util/List;

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRN:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRF:Landroid/os/Bundle;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRJ:Ljava/lang/String;

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRK:J

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRL:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRM:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvk:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvF:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSi:Ljava/util/concurrent/Future;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRQ:Ljava/lang/String;

    move/from16 v1, p27

    iput v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRR:F

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRX:Z

    move/from16 v1, p29

    iput v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRS:I

    move/from16 v1, p30

    iput v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRT:I

    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRU:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRV:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSj:Ljava/util/concurrent/Future;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRY:Ljava/lang/String;

    move/from16 v1, p35

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzKJ:Z

    move/from16 v1, p36

    iput v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRZ:I

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSa:Landroid/os/Bundle;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSb:Ljava/lang/String;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzvH:Lcom/google/android/gms/internal/zzfc;

    move/from16 v1, p40

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSc:Z

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSd:Landroid/os/Bundle;

    move/from16 v1, p42

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSh:Z

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzSk:Ljava/util/concurrent/Future;

    return-void
.end method
