.class final enum Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;
.super Ljava/lang/Enum;
.source "ViewKeyAdvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewKeyAdvTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

.field public static final enum IDENTITIES:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

.field public static final enum SHARE:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

.field public static final enum START:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

.field public static final enum SUBKEYS:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;


# instance fields
.field public final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final hasActionMode:Z

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 76
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const-string v1, "START"

    const-class v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvStartFragment;

    const/4 v2, 0x0

    const v4, 0x7f11084f

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;-><init>(Ljava/lang/String;ILjava/lang/Class;IZ)V

    sput-object v6, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->START:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    .line 77
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const-string v8, "SHARE"

    const-class v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;

    const/4 v9, 0x1

    const v11, 0x7f11084e

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;-><init>(Ljava/lang/String;ILjava/lang/Class;IZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->SHARE:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    .line 78
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const-string v2, "IDENTITIES"

    const-class v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    const/4 v3, 0x2

    const v5, 0x7f110c76

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;-><init>(Ljava/lang/String;ILjava/lang/Class;IZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->IDENTITIES:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    .line 79
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const-string v8, "SUBKEYS"

    const-class v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    const/4 v9, 0x3

    const v11, 0x7f11084c

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;-><init>(Ljava/lang/String;ILjava/lang/Class;IZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->SUBKEYS:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const/4 v0, 0x4

    .line 75
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->START:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->SHARE:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->IDENTITIES:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->SUBKEYS:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;---><clinit>()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;IZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 85
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->titleRes:I

    .line 87
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->fragmentClass:Ljava/lang/Class;

    .line 88
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->hasActionMode:Z

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;---><init>(Ljava/lang/String;ILjava/lang/Class;IZ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;
    .locals 4

    move-object/16 v1, p0

    .line 75
    const-class v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;
    .locals 4

    .line 75
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;--->values()[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
