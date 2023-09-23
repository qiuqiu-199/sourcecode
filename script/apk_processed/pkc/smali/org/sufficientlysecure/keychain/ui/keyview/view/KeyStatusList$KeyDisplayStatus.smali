.class public final enum Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;
.super Ljava/lang/Enum;
.source "KeyStatusList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyDisplayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

.field public static final enum UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;


# instance fields
.field final mCertifyStr:Ljava/lang/Integer;

.field final mColor:I

.field final mDecryptStr:Ljava/lang/Integer;

.field final mIsDivert:Z

.field final mSignStr:Ljava/lang/Integer;

.field final mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 68
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    const v3, 0x7f06001c

    const v4, 0x7f060199

    const v5, 0x7f11009b

    const v6, 0x7f1100a8

    const v7, 0x7f1100a1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v9, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v11, "DIVERT"

    const/4 v12, 0x1

    const v13, 0x7f06001c

    const v14, 0x7f060199

    const v15, 0x7f11009a

    const v16, 0x7f1100a5

    const v17, 0x7f11009e

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 72
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v2, "REVOKED"

    const/4 v3, 0x2

    const v4, 0x7f06001f

    const v5, 0x7f06001f

    const v6, 0x7f1100a9

    const v7, 0x7f1100a2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 74
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v10, "EXPIRED"

    const/4 v11, 0x3

    const v12, 0x7f06001f

    const v13, 0x7f06001f

    const v14, 0x7f1100a6

    const v15, 0x7f11009f

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v2, "STRIPPED"

    const/4 v3, 0x4

    const v6, 0x7f11009c

    const v7, 0x7f1100aa

    const v8, 0x7f1100a3

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 78
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v11, "INSECURE"

    const/4 v12, 0x5

    const v14, 0x7f06001f

    const v15, 0x7f1100a7

    const v16, 0x7f1100a7

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    .line 80
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const-string v2, "UNAVAILABLE"

    const/4 v3, 0x6

    const v6, 0x7f11009d

    const v7, 0x7f1100ab

    const v8, 0x7f1100a4

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v0, 0x7

    .line 67
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-void

    const-string v19, "M_InsDal"

    const-string v20, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;---><clinit>()V"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move/16 p5, p8

    .line 98
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mColor:I

    .line 100
    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mTextColor:I

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mCertifyStr:Ljava/lang/Integer;

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mSignStr:Ljava/lang/Integer;

    .line 103
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mDecryptStr:Ljava/lang/Integer;

    .line 104
    iput-boolean p5, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mIsDivert:Z

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;---><init>(Ljava/lang/String;IIIIIIZ)V"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    .line 88
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mColor:I

    .line 90
    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mTextColor:I

    const/4 v1, 0x0

    .line 91
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mCertifyStr:Ljava/lang/Integer;

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mSignStr:Ljava/lang/Integer;

    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mDecryptStr:Ljava/lang/Integer;

    .line 94
    iput-boolean p4, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mIsDivert:Z

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;---><init>(Ljava/lang/String;IIIIIZ)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;
    .locals 4

    move-object/16 v1, p0

    .line 67
    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;
    .locals 4

    .line 67
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;--->values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
