.class final enum Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;
.super Ljava/lang/Enum;
.source "LinkedIdViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VerifyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

.field public static final enum CERTIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

.field public static final enum VERIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

.field public static final enum VERIFY_ERROR:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

.field public static final enum VERIFY_OK:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 233
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const-string v1, "VERIFYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const-string v1, "VERIFY_OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_OK:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const-string v1, "VERIFY_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_ERROR:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const-string v1, "CERTIFYING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->CERTIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const/4 v0, 0x4

    .line 232
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_OK:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_ERROR:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->CERTIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;---><clinit>()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 232
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;
    .locals 4

    move-object/16 v1, p0

    .line 232
    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;
    .locals 4

    .line 232
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;--->values()[Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
