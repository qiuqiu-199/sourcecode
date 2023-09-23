.class public final Lcom/google/android/gms/internal/zzmn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzmn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public body:Ljava/lang/String;

.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I

.field public final zzKF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKJ:Z

.field public final zzKL:J

.field private zzLo:Lcom/google/android/gms/internal/zzmk;

.field public final zzNJ:Ljava/lang/String;

.field public final zzRG:Z

.field public final zzRV:Z

.field public zzRW:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzSA:Ljava/lang/String;

.field public final zzSB:Ljava/lang/String;

.field public final zzSC:Lcom/google/android/gms/internal/zzoo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSD:Ljava/util/List;
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

.field public final zzSE:Ljava/util/List;
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

.field public final zzSF:Z

.field public final zzSG:Lcom/google/android/gms/internal/zzmp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSH:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSI:Lcom/google/android/gms/internal/zzor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSJ:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzSK:Z

.field public final zzSh:Z

.field public final zzSm:J

.field public final zzSn:Z

.field public final zzSo:J

.field public final zzSp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzSq:Ljava/lang/String;

.field public final zzSr:J

.field public final zzSs:Ljava/lang/String;

.field public final zzSt:Z

.field public final zzSu:Ljava/lang/String;

.field public final zzSv:Ljava/lang/String;

.field public final zzSw:Z

.field public final zzSx:Z

.field public final zzSy:Z

.field public zzSz:Lcom/google/android/gms/internal/zzmv;

.field public final zzzB:Z

.field public final zzzC:Z

.field public final zzzD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 47

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x0

    invoke-direct/range {v0 .. v46}, Lcom/google/android/gms/internal/zzmn;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/zzmv;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 47

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-wide/from16 v13, p2

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x0

    invoke-direct/range {v0 .. v46}, Lcom/google/android/gms/internal/zzmn;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/zzmv;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/zzmv;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/google/android/gms/internal/zzmv;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/internal/zzoo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/internal/zzmp;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzor;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/zzmn;->versionCode:I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    move v2, p5

    iput v2, v0, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    move-wide v2, p7

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move v2, p9

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    move-wide v2, p10

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    if-eqz p12, :cond_2

    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/zzmn;->orientation:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSt:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSu:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSw:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzRG:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSx:Z

    move/from16 v1, p45

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSK:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSy:Z

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSz:Lcom/google/android/gms/internal/zzmv;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSA:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSB:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSz:Lcom/google/android/gms/internal/zzmv;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSz:Lcom/google/android/gms/internal/zzmv;

    sget-object v2, Lcom/google/android/gms/internal/zzmy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmv;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzmy;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmy;->zzjt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmy;->zzjt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    :cond_3
    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzzC:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzRV:Z

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzRW:Ljava/lang/String;

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzKI:Ljava/util/List;

    move/from16 v1, p41

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzKJ:Z

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSH:Ljava/lang/String;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSI:Lcom/google/android/gms/internal/zzor;

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    move/from16 v1, p46

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSh:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmk;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/internal/zzoo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/internal/zzmp;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzor;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move-object/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move-object/from16 v30, p25

    move/from16 v31, p26

    move/from16 v32, p27

    move-object/from16 v33, p28

    move-object/from16 v34, p29

    move-object/from16 v35, p30

    move/from16 v36, p31

    move-object/from16 v37, p32

    move/from16 v38, p33

    move-object/from16 v39, p34

    move-object/from16 v40, p35

    move/from16 v41, p36

    move-object/from16 v42, p37

    move-object/from16 v43, p38

    move-object/from16 v44, p39

    move/from16 v45, p40

    move/from16 v46, p41

    const/16 v1, 0x13

    const/4 v5, -0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v46}, Lcom/google/android/gms/internal/zzmn;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/zzmv;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzLo:Lcom/google/android/gms/internal/zzmk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmk;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/internal/zzoo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/internal/zzmp;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzor;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    move-object/from16 v33, p30

    move-object/from16 v34, p31

    move-object/from16 v35, p32

    move/from16 v36, p33

    move-object/from16 v37, p34

    move/from16 v38, p35

    move-object/from16 v39, p36

    move-object/from16 v40, p37

    move/from16 v41, p38

    move-object/from16 v42, p39

    move-object/from16 v43, p40

    move-object/from16 v44, p41

    move/from16 v45, p42

    move/from16 v46, p43

    const/16 v1, 0x13

    const/4 v5, -0x2

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v46}, Lcom/google/android/gms/internal/zzmn;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/zzmv;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzLo:Lcom/google/android/gms/internal/zzmk;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzLo:Lcom/google/android/gms/internal/zzmk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget v0, v0, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmv;

    new-instance v1, Lcom/google/android/gms/internal/zzmy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzmy;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmv;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSz:Lcom/google/android/gms/internal/zzmv;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzmo;->zza(Lcom/google/android/gms/internal/zzmn;Landroid/os/Parcel;I)V

    return-void
.end method
