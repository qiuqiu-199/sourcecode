.class public final enum Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;
.super Ljava/lang/Enum;
.source "OperationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum DEBUG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum INFO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

.field public static final enum WARN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 944
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->DEBUG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 945
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->INFO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 946
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "WARN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->WARN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 947
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 948
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "START"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 949
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "OK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    .line 950
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const-string v1, "CANCELLED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    const/4 v0, 0x7

    .line 943
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->DEBUG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->INFO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->WARN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->START:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    aput-object v1, v0, v8

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->$VALUES:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    return-void

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;---><clinit>()V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 943
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;
    .locals 4

    move-object/16 v1, p0

    .line 943
    const-class v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;
    .locals 4

    .line 943
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->$VALUES:[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;--->values()[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
