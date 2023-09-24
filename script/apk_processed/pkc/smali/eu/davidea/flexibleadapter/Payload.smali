.class public final enum Leu/davidea/flexibleadapter/Payload;
.super Ljava/lang/Enum;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/davidea/flexibleadapter/Payload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leu/davidea/flexibleadapter/Payload;

.field public static final enum ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

.field public static final enum CHANGE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum COLLAPSED:Leu/davidea/flexibleadapter/Payload;

.field public static final enum EXPANDED:Leu/davidea/flexibleadapter/Payload;

.field public static final enum FILTER:Leu/davidea/flexibleadapter/Payload;

.field public static final enum LINK:Leu/davidea/flexibleadapter/Payload;

.field public static final enum MERGE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum MOVE:Leu/davidea/flexibleadapter/Payload;

.field public static final enum NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

.field public static final enum REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

.field public static final enum SELECTION:Leu/davidea/flexibleadapter/Payload;

.field public static final enum SPLIT:Leu/davidea/flexibleadapter/Payload;

.field public static final enum UNDO:Leu/davidea/flexibleadapter/Payload;

.field public static final enum UNLINK:Leu/davidea/flexibleadapter/Payload;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    .line 31
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "NO_MORE_LOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

    .line 33
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "FILTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    .line 35
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "UNDO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->UNDO:Leu/davidea/flexibleadapter/Payload;

    .line 37
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "ADD_SUB_ITEM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    .line 39
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "REM_SUB_ITEM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    .line 41
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "MOVE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->MOVE:Leu/davidea/flexibleadapter/Payload;

    .line 43
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "LINK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    .line 45
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "UNLINK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->UNLINK:Leu/davidea/flexibleadapter/Payload;

    .line 47
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "SELECTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->SELECTION:Leu/davidea/flexibleadapter/Payload;

    .line 49
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "MERGE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->MERGE:Leu/davidea/flexibleadapter/Payload;

    .line 51
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "SPLIT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->SPLIT:Leu/davidea/flexibleadapter/Payload;

    .line 53
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "EXPANDED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->EXPANDED:Leu/davidea/flexibleadapter/Payload;

    .line 55
    new-instance v0, Leu/davidea/flexibleadapter/Payload;

    const-string v1, "COLLAPSED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Leu/davidea/flexibleadapter/Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->COLLAPSED:Leu/davidea/flexibleadapter/Payload;

    const/16 v0, 0xe

    .line 27
    new-array v0, v0, [Leu/davidea/flexibleadapter/Payload;

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v2

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v3

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v4

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->UNDO:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v5

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v6

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v7

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->MOVE:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v8

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v9

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->UNLINK:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v10

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->SELECTION:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v11

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->MERGE:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v12

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->SPLIT:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v13

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->EXPANDED:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v14

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->COLLAPSED:Leu/davidea/flexibleadapter/Payload;

    aput-object v1, v0, v15

    sput-object v0, Leu/davidea/flexibleadapter/Payload;->$VALUES:[Leu/davidea/flexibleadapter/Payload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/davidea/flexibleadapter/Payload;
    .locals 1

    .line 27
    const-class v0, Leu/davidea/flexibleadapter/Payload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/davidea/flexibleadapter/Payload;

    return-object p0
.end method

.method public static values()[Leu/davidea/flexibleadapter/Payload;
    .locals 1

    .line 27
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->$VALUES:[Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {v0}, [Leu/davidea/flexibleadapter/Payload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/davidea/flexibleadapter/Payload;

    return-object v0
.end method
