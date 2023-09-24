.class public final enum Lde/measite/minidns/Record$CLASS;
.super Ljava/lang/Enum;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/measite/minidns/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CLASS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/measite/minidns/Record$CLASS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/measite/minidns/Record$CLASS;

.field public static final enum ANY:Lde/measite/minidns/Record$CLASS;

.field public static final enum CH:Lde/measite/minidns/Record$CLASS;

.field public static final enum HS:Lde/measite/minidns/Record$CLASS;

.field public static final enum IN:Lde/measite/minidns/Record$CLASS;

.field private static final INVERSE_LUT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lde/measite/minidns/Record$CLASS;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lde/measite/minidns/Record$CLASS;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 150
    new-instance v0, Lde/measite/minidns/Record$CLASS;

    const-string v1, "IN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lde/measite/minidns/Record$CLASS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->IN:Lde/measite/minidns/Record$CLASS;

    .line 151
    new-instance v0, Lde/measite/minidns/Record$CLASS;

    const-string v1, "CH"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lde/measite/minidns/Record$CLASS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->CH:Lde/measite/minidns/Record$CLASS;

    .line 152
    new-instance v0, Lde/measite/minidns/Record$CLASS;

    const-string v1, "HS"

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lde/measite/minidns/Record$CLASS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->HS:Lde/measite/minidns/Record$CLASS;

    .line 153
    new-instance v0, Lde/measite/minidns/Record$CLASS;

    const-string v1, "NONE"

    const/16 v7, 0xfe

    invoke-direct {v0, v1, v4, v7}, Lde/measite/minidns/Record$CLASS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->NONE:Lde/measite/minidns/Record$CLASS;

    .line 154
    new-instance v0, Lde/measite/minidns/Record$CLASS;

    const-string v1, "ANY"

    const/16 v7, 0xff

    invoke-direct {v0, v1, v6, v7}, Lde/measite/minidns/Record$CLASS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->ANY:Lde/measite/minidns/Record$CLASS;

    const/4 v0, 0x5

    .line 149
    new-array v0, v0, [Lde/measite/minidns/Record$CLASS;

    sget-object v1, Lde/measite/minidns/Record$CLASS;->IN:Lde/measite/minidns/Record$CLASS;

    aput-object v1, v0, v2

    sget-object v1, Lde/measite/minidns/Record$CLASS;->CH:Lde/measite/minidns/Record$CLASS;

    aput-object v1, v0, v3

    sget-object v1, Lde/measite/minidns/Record$CLASS;->HS:Lde/measite/minidns/Record$CLASS;

    aput-object v1, v0, v5

    sget-object v1, Lde/measite/minidns/Record$CLASS;->NONE:Lde/measite/minidns/Record$CLASS;

    aput-object v1, v0, v4

    sget-object v1, Lde/measite/minidns/Record$CLASS;->ANY:Lde/measite/minidns/Record$CLASS;

    aput-object v1, v0, v6

    sput-object v0, Lde/measite/minidns/Record$CLASS;->$VALUES:[Lde/measite/minidns/Record$CLASS;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/measite/minidns/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    .line 167
    invoke-static {}, Lde/measite/minidns/Record$CLASS;->values()[Lde/measite/minidns/Record$CLASS;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 168
    sget-object v4, Lde/measite/minidns/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    invoke-virtual {v3}, Lde/measite/minidns/Record$CLASS;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lde/measite/minidns/Record$CLASS;->value:I

    return-void
.end method

.method public static getClass(I)Lde/measite/minidns/Record$CLASS;
    .locals 1

    .line 199
    sget-object v0, Lde/measite/minidns/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/measite/minidns/Record$CLASS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/measite/minidns/Record$CLASS;
    .locals 1

    .line 149
    const-class v0, Lde/measite/minidns/Record$CLASS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/measite/minidns/Record$CLASS;

    return-object p0
.end method

.method public static values()[Lde/measite/minidns/Record$CLASS;
    .locals 1

    .line 149
    sget-object v0, Lde/measite/minidns/Record$CLASS;->$VALUES:[Lde/measite/minidns/Record$CLASS;

    invoke-virtual {v0}, [Lde/measite/minidns/Record$CLASS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/measite/minidns/Record$CLASS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 190
    iget v0, p0, Lde/measite/minidns/Record$CLASS;->value:I

    return v0
.end method
