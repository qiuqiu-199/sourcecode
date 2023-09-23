.class public final Lio/jsonwebtoken/CompressionCodecs;
.super Ljava/lang/Object;
.source "CompressionCodecs.java"


# static fields
.field public static final DEFLATE:Lio/jsonwebtoken/CompressionCodec;

.field public static final GZIP:Lio/jsonwebtoken/CompressionCodec;

.field private static final INSTANCE:Lio/jsonwebtoken/CompressionCodecs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/jsonwebtoken/CompressionCodecs;

    invoke-direct {v0}, Lio/jsonwebtoken/CompressionCodecs;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->INSTANCE:Lio/jsonwebtoken/CompressionCodecs;

    .line 23
    new-instance v0, Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    .line 32
    new-instance v0, Lio/jsonwebtoken/impl/compression/GzipCompressionCodec;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/GzipCompressionCodec;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
